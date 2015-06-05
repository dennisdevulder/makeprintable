require File.expand_path('../client/endpoints.rb', __FILE__)

module MakePrintable
  class Client
    attr_accessor :api_key, :api_secret

    def initialize
      @api_key, @api_secret = [MakePrintable.configuration.api_key, MakePrintable.configuration.api_secret]
    end
  end
end
