module FcgiServer
  module ArgumentParser
    class << self
      def parse!
        {}.tap do |h|
          parser.parse!(into: h)
        end
      end

      private

      def parser
        @parser ||= OptParse.new.tap do |optparse|
          optparse.banner = <<-'EOF'
  __          _                                     
 / _|        (_)                                    
| |_ ___ __ _ _ ______ ___  ___ _ ____   _____ _ __ 
|  _/ __/ _` | |______/ __|/ _ \ '__\ \ / / _ \ '__|
| || (_| (_| | |      \__ \  __/ |   \ V /  __/ |   
|_| \___\__, |_|      |___/\___|_|    \_/ \___|_|   
         __/ |                                      
        |___/ 
Usage: fcgi-server [options]
EOF
          optparse.on('--help', 'PLACEHOLDER') do
            puts optparse
            exit 0
          end

          optparse.on('--config-file=CONFIG_FILE', 'PLACEHOLDER')
        end
      end
    end
  end
end
