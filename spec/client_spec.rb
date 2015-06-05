require 'spec_helper'

describe MakePrintable::Client do
  describe '#initialize' do

    it 'should inherit configuration block and set it to client object' do
      client = MakePrintable::Client.new
      expect(client.api_key).to eq '123apikey'
      expect(client.api_secret).to eq '123apisecret'
    end

  end
end
