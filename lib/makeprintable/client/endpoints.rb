module MakePrintable
  class Client
    def base_uri(path='/')
      "https://api.makeprintable.com/v1#{path}"
    end

    def configure_payload(path, opts={})
      base_uri(path) + opts.to_params
    end

    def get_request(uri)
      JSON.parse RestClient.get(uri, {})
    end

    def post_request(path, opts)
      Crack::XML.parse RestClient.post(base_uri(path), opts, key: self.api_key)
    end

    def delete_request(uri)
      JSON.parse RestClient.delete(uri, {}, key: self.api_key)
    end
  end
end
