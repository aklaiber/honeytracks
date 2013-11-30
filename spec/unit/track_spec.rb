require 'spec_helper'

describe HoneyTracks::Track do
  let(:tracker) { HoneyTracks::Track.new('2243443', 'de_DE', '46.244.175.103', 'Default') }

  describe '#user_login' do
    it 'should build request' do
      tracker.user_login.should eql('ok')
    end
  end

  describe '#user_logout' do
    it 'should build request' do
      tracker.user_logout.should eql('ok')
    end
  end

  describe '#signup' do
    it 'should build request' do
      tracker.signup.should eql('ok')
    end
  end

  describe '#click' do
    xit 'should build request' do
      #BUG : missing property UniqueCustomerClickToken
      tracker.click('MarketingIdentifier' => '111', 'LandingPageId' => '222').should eql('ok')
    end
  end

end