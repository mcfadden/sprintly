require "sprintly/resource"

module Sprintly
  class Product < Resource #ActiveResource::Base
    self.site = Sprintly::BASE #"https://sprint.ly/api/products"
    self.user = "jonathan@crankapps.com"
    self.password = "NG55dyDpFMRWyJeAMgsjN6n2mjw4QWfj"

    attr_accessor :product_id

    def self.[](product_id)
      self.new(product_id)
    end
    
    def initialize(product_id)
      super :product, { :product_id => product_id }
    end

  end

end

class ResourceDoesNotExistError < StandardError
end