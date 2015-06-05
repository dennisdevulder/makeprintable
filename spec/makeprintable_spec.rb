require 'spec_helper'

describe MakePrintable do
  describe '#configuration' do
    it 'should adopt configuration set in the initializer' do
      expect(MakePrintable.configuration.api_key).to eq '123apikey'
      expect(MakePrintable.configuration.api_secret).to eq '123apisecret'
    end
  end
end
