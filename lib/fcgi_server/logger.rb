module FcgiServer
  module Logger
    class << self 
      # Metaprogram in methods that will just delegate to the actual Ruby
      # Logger object.
      %i[debug info warn error fatal unknown].each do |log_level|
        define_method log_level do |msg|
          logger&.send(log_level, msg)
        end
      end

      private

      # Return a logger as defined in the config file.
      def logger
        if defined?(@logger)
          @logger
        else
          @logger = ::Logger.new(Config.log_file, level: Config.log_level)
        end
      end
    end
  end
end
