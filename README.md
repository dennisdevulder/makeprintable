# Makeprintable

Sign up for your api credentials at: https://makeprintable.com/site/login
(Sign up is currently invitation only)

## Installation

Add this line to your application's Gemfile:

    gem ‘makeprintable’

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install makeprintable

## Usage
Create a new initializer: (config/initializers/makeprintable.rb)

    MakePrintable.configure do |config|
      config.api_key = ENV[‘makeprintable_api_key’]
      config.api_secret = ENV[‘makeprintable_api_secret’]
    end



## Methods
For the official documentation please refer to: https://makeprintable.com/page/3/3D-repair-API

    # Upload a model
    client = MakePrintable::Client.new
    client.upload(file: File.open(‘path_to_file’))

    # Return a list of previously uploaded files.
    client = MakePrintable::Client.new
    client.items

    # Return specific item information
    client = MakePrintable::Client.new
    client.find_item(item_id)

    # Delete a specific item from server.
    client = MakePrintable::Client.new
    client.delete_item(item_id)

    # Delete a specific item from server.
    client = MakePrintable::Client.new
    client.delete_item(item_id)

    # Repair an uploaded item
    client = MakePrintable::Client.new
    client.repair(item_id: item_id, callback_url: ‘optional_url’, name: ‘model_name’, wall_thickness: 1, print_quality: [‘standard’, ‘prototype’, ‘high’], pre_optimize: [0,99], post_optimize: [0,99])

    # Returns repair information for a specific repair request, including status, progress and download links.
    client = MakePrintable::Client.new
    client.find_repaired(repair_id)

    # Return a list of repaired items
    client = MakePrintable::Client.new
    client.repaired
