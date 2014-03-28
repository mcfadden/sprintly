require 'active_support/inflector'
require 'active_resource'


module Sprintly
  class Resource < ActiveResource::Base
    class << self
      alias_method :[], :find

      def element_name
        name.split(/::/).last.underscore.pluralize
      end
    end
      
    def to_json(options = nil)
      # This is terrible. So terrible. I'm sorry. But sprint.ly's API expects
      # the post body to be a query string and not a JSON object. Take it up
      # with them. Please.
      self.attributes.to_query
    end

    # def initialize(name, hash={})

    #   # binding.pry

    #   @url = Sprintly::BASE.dup
    #   # self.site = url
    #   append_path! name, hash
    # end
    
    # def append_path!(element, hash={})
    #   @url << "/#{element.to_s.pluralize}"
    #   ids = hash.select { |item| item =~ /\_id$/ }
    #   @url << "/#{ids.values[0]}" unless ids.empty?
    # end
    
    # def to_url
    #   @url
    # end
    
    # def to_s
    #   to_url
    # end
    
    # def to_a
    #   # @Todo: return the items from the Sprintly response.
    #   @response || []
    # end
    
    # def method_missing(name, hash={})
    #   Resource.new(name, hash).to_a
    # end
    
    # def ==(other)
    #   to_url == other.to_url
    # end
    
  end
end

class ResourceDoesNotExistError < StandardError
end