require 'spec_helper'

describe MakePrintable::Client do
  describe '#base_uri' do
    it 'should be created from set configuration' do
      client = MakePrintable::Client.new
      expect(client.base_uri).to eq "http://api.makeprintable.com/?api_key=123apikey&api_secret=123apisecret"
    end
  end
end
