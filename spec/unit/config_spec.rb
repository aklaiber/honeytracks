require 'spec_helper'

describe HoneyTracks::Config do

  context 'with yml' do
    before do
      File.open("#{FIXTURES_PATH}/config/honey_tracks.yml") do |config_file|
        HoneyTracks::Config.config = YAML.load(config_file.read)['test']
      end
    end
    it { subject.api_key.should eql('0b3ea744b0d1a8633f78fb3da74471cf40ac21e9') }
  end
end