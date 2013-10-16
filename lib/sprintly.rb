require "sprintly/version"
require "sprintly/product"
require "sprintly/configuration"

module Sprintly
  class << self
    def config
      @config ||= Configuration.new
    end

    def email=(email)
      config.email = email
    end

    def api_key=(api_key)
      config.api_key = api_key
    end

    # delegate :email, :api_key, to: :config

    def [](product_id)
      Sprintly::Product[product_id]
    end
  end
end
