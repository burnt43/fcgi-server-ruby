module FcgiServer
  class CgiResponse
    def initialize(raw_cgi_script_string)
      @raw_cgi_script_string = raw_cgi_script_string
    end
  end
end
