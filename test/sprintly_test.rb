require 'minitest/autorun'
require 'sprintly'

describe Sprintly do
  
  it 'should formulate urls correctly' do
    assert_equal Sprintly['0'].to_url, Sprintly::BASE + "/products/0"
  end
  
  it 'allows you to use the [] method on Sprintly, not just Sprintly::Product' do
    assert Sprintly.respond_to?(:[]), "doesn't respond to []"
    assert_equal Sprintly['0'], Sprintly::Product['0']
  end
  
  it 'allows you to get the items' do
    product = Sprintly::Product['0']
    items = product.items :type => 'story'
    assert items.is_a?(Array), 'items must be an array'
  end
  
  it 'allows you to set email and api key' do
    Sprintly.email = 'jonathan@crankapps.com'
    Sprintly.api_key = 'NG55dyDpFMRWyJeAMgsjN6n2mjw4QWfj'

    puts Sprintly[2752].inspect
    
  end
end