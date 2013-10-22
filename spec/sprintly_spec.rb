require 'spec_helper'

describe Sprintly do
  
  # it 'should formulate urls correctly' do
  #   assert_equal Sprintly['0'].to_url, "https://sprint.ly/api/products/0"
  # end
  
  # it 'allows you to use the [] method on Sprintly, not just Sprintly::Product' do
  #   assert Sprintly.respond_to?(:[]), "doesn't respond to []"
  #   assert_equal Sprintly['0'], Sprintly::Product['0']
  # end
  
  describe Sprintly::Resource do
    it 'parses element names' do
      Sprintly::Resource.should_receive(:name).and_return("Test::Namespace::ElementName")
      Sprintly::Resource.element_name.should == 'element_names'
    end
  end

  describe Sprintly::Product, :fake_resource do
    before do
      Sprintly.configure do |config|
        config.site = 'https://sprint.ly/api'
        config.email = "bobvance" # Sprintly wants email addresses, which FakeWeb does not like in userinfo strings
        config.api_key = "THIS-SPACE-LEFT-BLANK"
      end

      FakeWeb.register_uri(:get, "#{test_domain}/api/products/42.json", body: product_response)

      @product = Sprintly::Product[42]
    end

    it 'should have a name' do
      @product.name.should == 'My Web Site'
    end

    it 'should have items' do
      FakeWeb.register_uri(:get, "#{test_domain}/api/products/42/items.json", body: items_response)
      @product.items.should_not be_nil
    end

    it 'should pass params through to the endpoint' do
      FakeWeb.register_uri(:get, "#{test_domain}/api/products/42/items.json?status=backlog", body: items_response)
      @product.items(status: 'backlog').should_not be_nil
    end
  end
end
