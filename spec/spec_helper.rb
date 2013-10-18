$:.unshift File.expand_path('../lib', File.dirname(__FILE__))

require 'sprintly'

require 'bundler'
Bundler.require(:default, :development)

require 'fakeweb'
require 'support/fake_resource'
require 'support/fixtures'
require 'pry'
require 'pry-debugger'


# FactoryGirl.find_definitions
ActiveResource::Base.send :include, ActiveResource::FakeResource
FakeWeb.allow_net_connect = false

RSpec.configure do |config|
  config.filter_run :focused => true
  config.run_all_when_everything_filtered = true
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.alias_example_to :fit, :focused => true
  config.color_enabled = true

  # config.include FactoryGirl::Syntax::Methods

  config.before(:each, :fake_resource) do
    ActiveResource::FakeResource.enable
  end

  config.after(:each, :fake_resource) do
    ActiveResource::FakeResource.disable
  end
end

def test_domain
  "#{Sprintly::Resource.connection.site.scheme}://#{Sprintly::Resource.connection.user}:#{Sprintly::Resource.connection.password}@#{Sprintly::Resource.connection.site.host}:#{Sprintly::Resource.connection.site.port}"
  # "http://#{Sprintly::Resource.connection.user}:#{Sprintly::Resource.connection.password}@#{Sprintly::Resource.connection.site.host}"
end
