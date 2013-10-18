require 'minitest/autorun'
require 'sprintly'
require 'pry'
require 'pry-debugger'

describe Sprintly do
  
  # it 'should formulate urls correctly' do
  #   assert_equal Sprintly['0'].to_url, "https://sprint.ly/api/products/0"
  # end
  
  # it 'allows you to use the [] method on Sprintly, not just Sprintly::Product' do
  #   assert Sprintly.respond_to?(:[]), "doesn't respond to []"
  #   assert_equal Sprintly['0'], Sprintly::Product['0']
  # end
  
  describe Sprintly::Product do

    # before { @product = Sprintly::Product[2752] }

    # it 'allows you to get the items' do
    #   # product = Sprintly::Product['0']
    #   items = @product.items :type => 'story'
    #   assert items.is_a?(Array), 'items must be an array'
    # end
    before do
      Sprintly.configure do |config|
        config.site = 'https://sprint.ly/api'
        config.email = "jonathan@crankapps.com"
        config.api_key = "NG55dyDpFMRWyJeAMgsjN6n2mjw4QWfj"
      end
    end

    it 'should have items' do
      @product = Sprintly::Product[2752]
      assert !@product.items.nil?
    end

  end

  # describe 'config' do
  #   before do
  #     Sprintly.configure do |config|

  #       # binding.pry

  #       config.site = 'http://test.com'
  #       config.email = 'bob@loblaw.com'
  #       config.api_key = 'THIS SPACE LEFT BLANK'

  #       # config.site = 'https://sprint.ly/api'
  #       # config.email = "jonathan@crankapps.com"
  #       # config.api_key = "NG55dyDpFMRWyJeAMgsjN6n2mjw4QWfj"

  #     end
  #   end

  #   it 'should set the values properly' do
  #     @product = Sprintly::Product[2752]

  #     assert_equal 'https://sprint.ly/api/', @product.class.site
  #     assert_equal 'bob@loblaw.com', @product.class.user
  #     assert_equal 'THIS SPACE LEFT BLANK', @product.class.password
  #   end
  # end
end