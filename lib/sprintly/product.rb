# require "sprintly/resource"

module Sprintly
  class Product < Resource
    class Item < Resource
      # TODO: Build from product path
      self.prefix = "/api/products/:product_id/"
    end

    def items(query = {})
      @items = Item.find(:all, params: { product_id: self.id }.merge(query))
    end
  end
end
