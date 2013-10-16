require 'active_support/inflector'
require 'active_resource'

module Sprintly
  BASE = "https://sprint.ly/api"

  class Resource < ActiveResource::Base
    
    attr_accessor :name, :url
    
    # self.site = "https://sprint.ly/api/products"
    self.user = "jonathan@crankapps.com"
    self.password = "NG55dyDpFMRWyJeAMgsjN6n2mjw4QWfj"


    def initialize(name, hash={})
      @url = Sprintly::BASE.dup
      # self.site = url
      append_path! name, hash
    end
    
    def append_path!(element, hash={})
      @url << "/#{element.to_s.pluralize}"
      ids = hash.select { |item| item =~ /\_id$/ }
      @url << "/#{ids.values[0]}" unless ids.empty?
    end
    
    def to_url
      @url
    end
    
    def to_s
      to_url
    end
    
    def to_a
      # @Todo: return the items from the Sprintly response.
      @response || []
    end
    
    def method_missing(name, hash={})
      Resource.new(name, hash).to_a
    end
    
    def ==(other)
      to_url == other.to_url
    end
    
  end
end