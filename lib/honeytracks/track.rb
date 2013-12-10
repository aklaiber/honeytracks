module HoneyTracks
  class Track
    attr_reader :uri, :http

    def initialize(unique_customer_identifier, language, ip, space)
      @attributes = {
          'UniqueCustomerIdentifier' => unique_customer_identifier,
          'Language' => language,
          'ClientIP' => ip,
          'Space' => space
      }
      @uri = URI.parse("http://tracker.honeytracks.com/?ApiKey=#{Config.api_key}")
      @http = Net::HTTP.new(uri.host, uri.port)
    end

    def user_login
      post @attributes.merge('Action' => 'User::Login')
    end

    def user_logout
      post @attributes.merge('Action' => 'User::Logout')
    end

    def signup(attributes = {})
      post @attributes.merge('Action' => 'User::Signup').merge(attributes)
    end

    def click(attributes)
      post @attributes.merge('Action' => 'User::Click').merge(attributes)
    end

    def virtual_currency_purchase(attributes)
      post @attributes.merge('Action' => 'VirtualCurrencies::Buy').merge(attributes)
    end

    private

    def build_request(attributes)
      str = ''
      attributes.each do |key, value|
        str << "Packets[0][#{key}]=#{value}&"
      end
      return str
    end

    def post(attributes)
      request = Net::HTTP::Post.new(uri)
      request.body = build_request(attributes)
      if request
        return http.request(request).body.strip
      end
    end
  end
end