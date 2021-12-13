module FcgiServer
  module Logger
    class << self 
      %i[debug info warn error fatal unknown].each do |log_level|
        define_method log_level do |msg|
          logger&.send(log_level, msg)
        end
      end

      private

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
