require "sprintly/version"
require "sprintly/resource"
require "sprintly/product"
# require "sprintly/configuration"

module Sprintly
  class << self
    attr_accessor :site, :email, :api_key

    def configure
      yield self
      Resource.site     = site || "https://sprint.ly/api"
      Resource.user     = email
      Resource.password = api_key
    end

    def [](product_id)
      Sprintly::Product[product_id]
    end
  end
end
