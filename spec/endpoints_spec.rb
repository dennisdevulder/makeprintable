require 'spec_helper'

describe MakePrintable::Client do
  describe '#base_uri' do
    it 'should be created from set configuration' do
      client = MakePrintable::Client.new
      expect(client.base_uri).to eq "http://api.makeprintable.com/?api_key=123apikey&api_secret=123apisecret"
    end
  end

  describe '#configure payload' do
    it 'should add an extra variable to the base_uri' do
      client = MakePrintable::Client.new
      expect(client.configure_payload('/', variable: true)).to eq "http://api.makeprintable.com/?api_key=123apikey&api_secret=123apisecret&variable=true"
    end

    it 'should have no problems chaining variables' do
      client = MakePrintable::Client.new
      expect(client.configure_payload('/', variable1: true, variable2: false)).to eq "http://api.makeprintable.com/?api_key=123apikey&api_secret=123apisecret&variable1=true&variable2=false"
    end
  end
end
