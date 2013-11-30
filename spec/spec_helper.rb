$:.unshift File.expand_path(File.dirname(__FILE__) + '/../lib')

require 'bundler/setup'
require 'rspec'
require 'honeytracks'

FIXTURES_PATH = "#{File.dirname(__FILE__)}/fixtures"

File.open("#{FIXTURES_PATH}/config/honey_tracks.yml") do |config_file|
  HoneyTracks::Config.config = YAML.load(config_file.read)['test']
end

RSpec.configure do |config|
  config.mock_with :rspec
end