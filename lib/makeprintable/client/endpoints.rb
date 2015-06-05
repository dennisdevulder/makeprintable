module MakePrintable
  class Client
    def base_uri
      "http://api.makeprintable.com/?api_key=#{api_key}&api_secret=#{api_secret}"
    end

    def configure_payload(opts={})
      base_uri + opts.to_params
    end
  end
end
