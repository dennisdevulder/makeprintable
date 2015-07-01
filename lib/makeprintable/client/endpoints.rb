module MakePrintable
  class Client
    def base_uri(path='/')
      "http://api.makeprintable.com" + path
    end

    def configure_payload(path, opts={})
      base_uri(path) + opts.to_params
    end

    def get_request(uri)
      JSON.parse RestClient.get(uri, {}, key: self.api_key)
    end

    def post_request(path, opts)
      JSON.parse RestClient.post(base_uri(path), opts, key: self.api_key)
    end

    def delete_request(uri)
      JSON.parse RestClient.delete(uri, {}, key: self.api_key)
    end
  end
end
