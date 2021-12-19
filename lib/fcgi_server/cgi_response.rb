module FcgiServer
  class CgiResponse
    def initialize(cgi_request)
      @cgi_request = cgi_request
    end

    def process!
      puts raw_cgi_request_result
    end

    private

    def headers
    end

    def body
    end

    def parse_result!
    end

    def raw_cgi_request_result
      @raw_cgi_request_result ||= @cgi_request.process!
    end
  end
end
