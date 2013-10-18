# require "sprintly/resource"

module Sprintly
  class Product < Resource
    class Item < Resource
      # TODO: Build from product path
      self.prefix = "/api/products/:product_id/"
    end

    def items(scope = :all)
      # binding.pry
      @items = Item.find(scope, params: { product_id: self.id })
    end
  end
end
