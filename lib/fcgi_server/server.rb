module FcgiServer
  class Server
    def initialize(options={})
      @options = options

      FcgiServer::Config.load!(@options[:'config-file'])

      Logger.info "starting tcp server #{Config.server_host}:#{Config.server_port}"
      @tcp_server = TCPServer.new(Config.server_host, Config.server_port)
    end

    def run!
      Logger.info "listening for incoming client connections"

      loop do
        Thread.start(@tcp_server.accept) do |client|
          Logger.info "client connected"
          
          begin
            request = CgiRequest.new(client)
            Logger.debug(request)

            # response = CgiResponse.new(request)
            raw_cgi_result = request.process!

            response = StringIO.new.tap do |s|
              s.print FcgiServer::RESPONSE_HEADER
              s.print "Refresh: 60\r\n"
              s.print "Content-type: text/html; charset: UTF-8\r\n"
              s.print "\r\n"
              # s.print "<html><body><h1>#{Time.now.to_i}</h1></body></html>"
              s.print raw_cgi_result
            end.string

            client.puts(response)
            Logger.info("response sent to client")
            Logger.debug(response[RESPONSE_HEADER.size..-1])
          rescue => e
            Logger.error("an error occurred")
          ensure
            client.close
          end

          Logger.info "client connection released"
        end
      end
    end
  end
end
