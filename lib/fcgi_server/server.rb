module FcgiServer
  class Server
    def initialize(options={})
      @options = options

      # Load the config file.
      # REVIEW: Should this really be done here and not sometime before?
      FcgiServer::Config.load!(@options[:'config-file'])

      # Create a TCP Server.
      Logger.info "starting tcp server #{Config.server_host}:#{Config.server_port}"
      @tcp_server = TCPServer.new(Config.server_host, Config.server_port)
    end

    def run!
      Logger.info "listening for incoming client connections"

      loop do
        # Accept new client connections and give them their own thread.
        Thread.start(@tcp_server.accept) do |client|
          Logger.info "client connected"
          
          begin
            # read request
            request = CgiRequest.new(client)
            Logger.debug("request received: #{request.to_s}")

            # create response
            response = CgiResponse.new(request)
            Logger.debug("response: #{response.raw_output(with_cgi_header: false)}")

            # send response over socket
            client.puts(response.raw_output)
            Logger.info("response sent to client")
          rescue => e
            # handle errors
            Logger.error(StringIO.new.tap {|s|
              s.puts e.class.name
              s.puts e.message
              e.backtrace.each {|l| s.puts l}
            }.string)
          ensure
            # close client connection
            client.close
          end

          Logger.info "client connection released"
        end
      end
    end
  end
end
