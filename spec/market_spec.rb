require './lib/item'
require './lib/vendor'
require './lib/market'

RSpec.describe Market do
  it 'exists' do
    market = Market.new("South Pearl Street Farmers Market") 
    expect(market).to be_a(Market)
  end
end