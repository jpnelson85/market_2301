require './lib/item'
require './lib/vendor'
require './lib/market'

RSpec.describe Market do
  it 'exists' do
    market = Market.new("South Pearl Street Farmers Market") 
    expect(market).to be_a(Market)
  end

  it 'has empty array of vendors' do
    vendor = Vendor.new("Rocky Mountain Fresh")
    market = Market.new("South Pearl Street Farmers Market") 
    expect(market.vendors).to eq([])
  end

  it 'add vendors' do
    market = Market.new("South Pearl Street Farmers Market") 
    vendor1 = Vendor.new("Rocky Mountain Fresh")
    vendor2 = Vendor.new("Ba-Nom-a-Nom")
    vendor3 = Vendor.new("Palisade Peach Shack") 
    market.add_vendor(vendor1)
    expect(market.vendors).to eq([vendor1])
    market.add_vendor(vendor2)
    expect(market.vendors).to eq([vendor1, vendor2])
    market.add_vendor(vendor3)
    expect(market.vendors).to eq([vendor1, vendor2, vendor3])
  end

end

    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    vendor1 = Vendor.new("Rocky Mountain Fresh")
    vendor2 = Vendor.new("Ba-Nom-a-Nom")
    vendor3 = Vendor.new("Palisade Peach Shack") 
