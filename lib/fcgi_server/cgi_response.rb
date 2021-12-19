module FcgiServer
  class CgiResponse
    CGI_HEADER = "\x01\x06\x00\x01\xFF\x00\x00\x00"
    HEADER_REGEX = %r/\A([\w\-]+):\s(.*)\z/

    CANNED_404_RESPONSE = <<-'EOF'
Content-type: text/html

<html>
<head>
<body>
<h1>404 Not Found</h1>
</body>
</head>
</html>
EOF

    attr_reader :headers, :body

    def initialize(cgi_request)
      @cgi_request = cgi_request
      @headers = {}
      @body = nil

      parse!
    end

    # The raw output that we will send back to the client over the socket.
    # Optionally, you can remove the CGI header. This is good if you want
    # to output it to a log without the unprintable characters in the
    # CGI header.
    def raw_output(with_cgi_header: true)
      if @raw_output.nil?
        @raw_output =
          StringIO.new.tap do |s|
            # Print CGI Header.
            s.print(CGI_HEADER)

            # Convert headers mapping into a valid response.
            @headers.each do |h_key, h_value|
              s.puts("#{h_key}: #{h_value}\r")
            end

            # Separate the headers and body.
            s.puts("\r")

            # Output body as is.
            s.puts(@body)
          end.string
      end

      # Chop off the header, if need be.
      with_cgi_header ? @raw_output : @raw_output[CGI_HEADER.size..-1]
    end

    private

    def parse!
      # Start parsing headers because they are first.
      state = :looking_for_headers
      tmp_body = StringIO.new

      raw_input.lines.each do |l|
        line = l.chomp

        case state
        when :looking_for_headers
          if (match_data=HEADER_REGEX.match(line))
            # Parse headers and store in a hash.
            key = match_data.captures[0]
            value = match_data.captures[1]
            @headers[key] = value
          else
            # Our first non-header line let's us know that everything else
            # will be the body.
            state = :body_found
          end
        when :body_found
          # Any body line, just output as is.
          tmp_body.puts(line)
        end
      end

      @body = tmp_body.string
    end

    def raw_input
      if @raw_input.nil?
        # We don't have a cached @raw_input yet, so process the @cgi_request.
        # It will give back the raw result of calling the script.
        @raw_input = @cgi_request.process!

        # If we got nothing back, then the script did not exist. Return a
        # canned 404 response.
        if @raw_input.empty?
          @raw_input = CANNED_404_RESPONSE
        end

        # Return whatever we've calculated.
        @raw_input
      else
        # Return the cached @raw_input.
        @raw_input
      end
    end
  end
end
