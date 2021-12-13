module FcgiServer
  module Config
    class << self
      def load!(filename=nil)
        if filename
          @config = YAML.load(IO.read(filename))
        else
          @config = {}
        end
      end

      def server_host
        @config.dig('server', 'host') || '127.0.0.1'
      end

      def server_port
        @config.dig('server', 'port') || 9000
      end

      def server_aliases
        @config.dig('server', 'aliases')
      end

      def log_file
        @config.dig('log', 'file')
      end

      def log_level
        @config.dig('log', 'level') || 'info'
      end
    end
  end
end
