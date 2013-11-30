module HoneyTracks
  module Config
    class << self
      attr_writer :config
    end

    def self.api_key
      @config['api_key']
    end
  end
end