module MakePrintable
  class Client
    # Upload a model to fix it later
    def upload(opts={})
      opts.assert_valid_keys(:file, :fileurl)
      post_request '/items', opts
    end

    # Return specific item information
    def find_item(id)
      get_request configure_payload("/items/#{id}")
    end

    # Delete a specific item from server.
    def delete_item(id)
      delete_request configure_payload("/items/#{id}")
    end

    # Return a list of previously uploaded models
    def items
      get_request configure_payload('/items')
    end

    # Repairs an uploaded item
    def repair(opts={})
      opts.assert_valid_keys(:item_id, :callback_url, :name, :wall_thickness, :print_quality, :pre_optimize, :post_optimize, :secure)
      post_request '/fixes', opts
    end

    # Returns repair information for a specific repair request, including status, progress and download links.
    def find_repaired(id)
      get_request configure_payload("/fixes/#{id}")
    end

    # Return a list of repaired items
    def repaired
      get_request configure_payload('/fixes')
    end
  end
end
