require File.expand_path('../client/endpoints.rb', __FILE__)
require File.expand_path('../client/jobs.rb', __FILE__)

module MakePrintable
  class Client
    attr_accessor :api_key

    def initialize
      @api_key = MakePrintable.configuration.api_key
    end
  end
end
