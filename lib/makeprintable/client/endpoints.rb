module MakePrintable
  class Client
    def base_uri
      "http://api.makeprintable.com/?api_key=#{api_key}&api_secret=#{api_secret}"
    end
  end
end
