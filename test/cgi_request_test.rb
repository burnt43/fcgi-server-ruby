require './test/initialize'

module FcgiServer
  module Testing
    class CgiRequestTest < FcgiServer::Testing::Test
      def setup
        @fake_client_01 = BasicObject.new
        class << @fake_client_01
          def gets
            # request captured from xymon
            [1, 1, 0, 1, 0, 8, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 4, 0, 1, 3, 170, 6, 0, 17, 7, 71, 65, 84, 69, 87, 65, 89, 95, 73, 78, 84, 69, 82, 70, 65, 67, 69, 67, 71, 73, 47, 49, 46, 49, 15, 5, 83, 69, 82, 86, 69, 82, 95, 83, 79, 70, 84, 87, 65, 82, 69, 110, 103, 105, 110, 120, 12, 40, 81, 85, 69, 82, 89, 95, 83, 84, 82, 73, 78, 71, 72, 79, 83, 84, 61, 106, 97, 109, 101, 115, 99, 97, 114, 115, 111, 110, 46, 110, 105, 110, 106, 97, 38, 83, 69, 82, 86, 73, 67, 69, 61, 99, 108, 105, 101, 110, 116, 108, 111, 103, 14, 3, 82, 69, 81, 85, 69, 83, 84, 95, 77, 69, 84, 72, 79, 68, 71, 69, 84, 12, 9, 67, 79, 78, 84, 69, 78, 84, 95, 84, 89, 80, 69, 116, 101, 120, 116, 47, 104, 116, 109, 108, 14, 0, 67, 79, 78, 84, 69, 78, 84, 95, 76, 69, 78, 71, 84, 72, 15, 23, 83, 67, 82, 73, 80, 84, 95, 70, 73, 76, 69, 78, 65, 77, 69, 47, 120, 121, 109, 111, 110, 45, 99, 103, 105, 47, 115, 118, 99, 115, 116, 97, 116, 117, 115, 46, 115, 104, 11, 23, 83, 67, 82, 73, 80, 84, 95, 78, 65, 77, 69, 47, 120, 121, 109, 111, 110, 45, 99, 103, 105, 47, 115, 118, 99, 115, 116, 97, 116, 117, 115, 46, 115, 104, 11, 64, 82, 69, 81, 85, 69, 83, 84, 95, 85, 82, 73, 47, 120, 121, 109, 111, 110, 45, 99, 103, 105, 47, 115, 118, 99, 115, 116, 97, 116, 117, 115, 46, 115, 104, 63, 72, 79, 83, 84, 61, 106, 97, 109, 101, 115, 99, 97, 114, 115, 111, 110, 46, 110, 105, 110, 106, 97, 38, 83, 69, 82, 86, 73, 67, 69, 61, 99, 108, 105, 101, 110, 116, 108, 111, 103, 12, 23, 68, 79, 67, 85, 77, 69, 78, 84, 95, 85, 82, 73, 47, 120, 121, 109, 111, 110, 45, 99, 103, 105, 47, 115, 118, 99, 115, 116, 97, 116, 117, 115, 46, 115, 104, 13, 15, 68, 79, 67, 85, 77, 69, 78, 84, 95, 82, 79, 79, 84, 47, 111, 112, 116, 47, 110, 103, 105, 110, 120, 47, 104, 116, 109, 108, 15, 8, 83, 69, 82, 86, 69, 82, 95, 80, 82, 79, 84, 79, 67, 79, 76, 72, 84, 84, 80, 47, 49, 46, 49, 11, 12, 82, 69, 77, 79, 84, 69, 95, 65, 68, 68, 82, 49, 48, 48, 46, 49, 46, 57, 53, 46, 49, 50, 52, 11, 5, 82, 69, 77, 79, 84, 69, 95, 80, 79, 82, 84, 53, 56, 53, 49, 48, 11, 11, 83, 69, 82, 86, 69, 82, 95, 65, 68, 68, 82, 52, 53, 46, 55, 54, 46, 53, 46, 49, 57, 49, 11, 3, 83, 69, 82, 86, 69, 82, 95, 80, 79, 82, 84, 52, 52, 51, 11, 17, 83, 69, 82, 86, 69, 82, 95, 78, 65, 77, 69, 106, 97, 109, 101, 115, 99, 97, 114, 115, 111, 110, 46, 110, 105, 110, 106, 97, 9, 17, 72, 84, 84, 80, 95, 72, 79, 83, 84, 106, 97, 109, 101, 115, 99, 97, 114, 115, 111, 110, 46, 110, 105, 110, 106, 97, 15, 68, 72, 84, 84, 80, 95, 85, 83, 69, 82, 95, 65, 71, 69, 78, 84, 77, 111, 122, 105, 108, 108, 97, 47, 53, 46, 48, 32, 40, 88, 49, 49, 59, 32, 76, 105, 110, 117, 120, 32, 120, 56, 54, 95, 54, 52, 59, 32, 114, 118, 58, 55, 56, 46, 48, 41, 32, 71, 101, 99, 107, 111, 47, 50, 48, 49, 48, 48, 49, 48, 49, 32, 70, 105, 114, 101, 102, 111, 120, 47, 55, 56, 46, 48, 11, 74, 72, 84, 84, 80, 95, 65, 67, 67, 69, 80, 84, 116, 101, 120, 116, 47, 104, 116, 109, 108, 44, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 120, 104, 116, 109, 108, 43, 120, 109, 108, 44, 97, 112, 112, 108, 105, 99, 97, 116, 105, 111, 110, 47, 120, 109, 108, 59, 113, 61, 48, 46, 57, 44, 105, 109, 97, 103, 101, 47, 119, 101, 98, 112, 44, 42, 47, 42, 59, 113, 61, 48, 46, 56, 20, 14, 72, 84, 84, 80, 95, 65, 67, 67, 69, 80, 84, 95, 76, 65, 78, 71, 85, 65, 71, 69, 101, 110, 45, 85, 83, 44, 101, 110, 59, 113, 61, 48, 46, 53, 20, 17, 72, 84, 84, 80, 95, 65, 67, 67, 69, 80, 84, 95, 69, 78, 67, 79, 68, 73, 78, 71, 103, 122, 105, 112, 44, 32, 100, 101, 102, 108, 97, 116, 101, 44, 32, 98, 114, 15, 10].pack('C*')
          end
        end
        @request_01 = FcgiServer::CgiRequest.new(@fake_client_01)
      end

      def test_parse
        assert_equal("CGI/1.1", @request_01['GATEWAY_INTERFACE'])
        assert_equal("nginx", @request_01['SERVER_SOFTWARE'])
        assert_equal("HOST=jamescarson.ninja&SERVICE=clientlog", @request_01['QUERY_STRING'])
        assert_equal("GET", @request_01['REQUEST_METHOD'])
        assert_equal("text/html", @request_01['CONTENT_TYPE'])
        assert_equal("", @request_01['CONTENT_LENGTH'])
        assert_equal("/xymon-cgi/svcstatus.sh", @request_01['SCRIPT_FILENAME'])
        assert_equal("/xymon-cgi/svcstatus.sh", @request_01['SCRIPT_NAME'])
        assert_equal("/xymon-cgi/svcstatus.sh?HOST=jamescarson.ninja&SERVICE=clientlog", @request_01['REQUEST_URI'])
        assert_equal("/xymon-cgi/svcstatus.sh", @request_01['DOCUMENT_URI'])
        assert_equal("/opt/nginx/html", @request_01['DOCUMENT_ROOT'])
        assert_equal("HTTP/1.1", @request_01['SERVER_PROTOCOL'])
        assert_equal("100.1.95.124", @request_01['REMOTE_ADDR'])
        assert_equal("58510", @request_01['REMOTE_PORT'])
        assert_equal("45.76.5.191", @request_01['SERVER_ADDR'])
        assert_equal("443", @request_01['SERVER_PORT'])
        assert_equal("jamescarson.ninja", @request_01['SERVER_NAME'])
        assert_equal("jamescarson.ninja", @request_01['HTTP_HOST'])
        assert_equal("Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0", @request_01['DHTTP_USER_AGENT'])
        assert_equal("text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8", @request_01['JHTTP_ACCEPT'])
        assert_equal("en-US,en;q=0.5", @request_01['HTTP_ACCEPT_LANGUAGE'])
        assert_equal("gzip, deflate, br", @request_01['HTTP_ACCEPT_ENCODING'])
      end

      def test_actual_cgi_script_name
        FcgiServer::Config.instance_eval {
          @config = {'server' => {
            'aliases' => {
              '/xymon-cgi' => '/path1/path2'
              
            }
          }}
        }

        assert_equal('/path1/path2/svcstatus.sh', @request_01.send(:actual_cgi_script_name))
      end

      def test_env_string
        s = <<-EOF
GATEWAY_INTERFACE="CGI/1.1" \
SERVER_SOFTWARE="nginx" \
QUERY_STRING="HOST=jamescarson.ninja&SERVICE=clientlog" \
REQUEST_METHOD="GET" \
CONTENT_TYPE="text/html" \
CONTENT_LENGTH="" \
SCRIPT_FILENAME="/xymon-cgi/svcstatus.sh" \
SCRIPT_NAME="/xymon-cgi/svcstatus.sh" \
REQUEST_URI="/xymon-cgi/svcstatus.sh?HOST=jamescarson.ninja&SERVICE=clientlog" \
DOCUMENT_URI="/xymon-cgi/svcstatus.sh" DOCUMENT_ROOT="/opt/nginx/html" \
SERVER_PROTOCOL="HTTP/1.1" \
REMOTE_ADDR="100.1.95.124" \
REMOTE_PORT="58510" \
SERVER_ADDR="45.76.5.191" \
SERVER_PORT="443" SERVER_NAME="jamescarson.ninja" \
HTTP_HOST="jamescarson.ninja" \
DHTTP_USER_AGENT="Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0" \
JHTTP_ACCEPT="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" \
HTTP_ACCEPT_LANGUAGE="en-US,en;q=0.5" \
HTTP_ACCEPT_ENCODING="gzip, deflate, br"
EOF
        s.chomp!
        assert_equal(s, @request_01.send(:env_string))
      end
    end
  end
end
