module FcgiServer
  class CgiRequest
    REQUEST_REGEX = %r/(CONTENT_LENGTH|CONTENT_TYPE|DHTTP_USER_AGENT|DOCUMENT_URI|DOCUMENT_ROOT|GATEWAY_INTERFACE|HTTP_ACCEPT_ENCODING|HTTP_ACCEPT_LANGUAGE|HTTP_HOST|HTTP_REFERER|JHTTP_ACCEPT|QUERY_STRING|REMOTE_ADDR|REMOTE_PORT|REQUEST_METHOD|REQUEST_URI|SCRIPT_FILENAME|SCRIPT_NAME|SERVER_ADDR|SERVER_NAME|SERVER_PORT|SERVER_PROTOCOL|SERVER_SOFTWARE)([\w\/\.&=\-\?\x20();:,\+\*]*)(\x9|\xB|\xC|\xD|\xE|\xF|\x14)/

    def initialize(client)
      @client = client
      @cgi_params = {}

      parse!
    end

    # Access a CGI request variable.
    def [](key)
      @cgi_params[key]
    end

    # Show what the CGI request looks like.
    def inspect
      "<CgiRequest #{@cgi_params.to_s}>"
    end

    # Call the CGI script and get its output.
    def process!
      Logger.info("call cgi script: #{actual_cgi_script_name}")

      `/usr/bin/env -i #{env_string} #{actual_cgi_script_name}`
    end

    private

    # Construct a string to use for /usr/bin/env. The environment should come
    # straight from the CGI request.
    def env_string
      @cgi_params.map do |key, value|
        "#{key}=\"#{value}\""
      end.join(' ').encode('UTF-8')
    end

    # Use the configured aliases to take the URI and convert it to a location
    # on the system to locate the CGI script.
    def actual_cgi_script_name
      script_name = self.[]('SCRIPT_NAME')

      Config.server_aliases.each do |alias_string, replacement_string|
        if script_name.start_with?(alias_string)
          return script_name.sub(alias_string, replacement_string)
        end
      end

      script_name
    end

    # Parse the request in whacko FastCGI format that uses all sorts of
    # seemingly random delimiters. Set the @cgi_params hash with what
    # we find.
    def parse!
      data = @client.gets
      return unless data

      data.scan(REQUEST_REGEX).each do |attribute, value, delimiter|
        @cgi_params[attribute] = value
      end
    end
  end
end
