require 'initialize'

options = FcgiServer::ArgumentParser.parse!
FcgiServer::Server.new(options).run!
