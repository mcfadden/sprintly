# Sprintly

A client for the Sprintly API

[![Build Status](https://secure.travis-ci.org/copyhacker/sprintly.png?branch=master)](https://travis-ci.org/copyhacker/sprintly)

## Installation

Add this line to your application's Gemfile:

    gem 'sprintly'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sprintly

## Usage

1. Configure with your API KEY:

  ```ruby
  Sprintly.configure do |config|
    config.site = 'https://sprint.ly/api'
    config.email = "me@email.com"
    config.api_key = "THIS-SPACE-LEFT-BLANK"
  end
  ```
  
2. Access resources:

  ```ruby
  items = Sprintly::Product[99999].items
  
  # You can pass a hash of parameters to resource methods like 'items'
  ```
  
3. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
