module MakePrintable
  class Client
    def base_uri(path='/')
      "http://api.makeprintable.com#{path}?api_key=#{api_key}&api_secret=#{api_secret}"
    end

    def configure_payload(path, opts={})
      base_uri(path) + opts.to_params
    end

    def get_request(uri)
      JSON.parse RestClient.get(uri)
    end

    def post_request(path, opts)
      JSON.parse RestClient.post(base_uri(path), opts)
    end

    def delete_request(uri)
      JSON.parse RestClient.delete(uri)
    end
  end
end
