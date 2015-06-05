require 'makeprintable/version'
require 'rubygems'
require 'rest-client'
require 'json'

module MakePrintable
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end


  class Configuration
    attr_accessor :api_key, :api_secret
  end
end
