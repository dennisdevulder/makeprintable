require 'spec_helper'

describe MakePrintable do
  describe '#configuration' do
    it 'should adopt configuration set in the initializer' do
      expect(MakePrintable.configuration.api_key).to eq '123apikey'
    end
  end
end
