require 'bundler/setup'

require 'active_support/core_ext'

require_relative '../lib/honeytracks/railtie' if defined?(Rails)
require_relative '../lib/honeytracks/version'
require_relative '../lib/honeytracks/config'
require_relative '../lib/honeytracks/track'

module HoneyTracks

end
