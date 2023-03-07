require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  it 'exists' do
    vendor = Vendor.new("Rocky Mountain Fresh")
    expect(vendor).to be_a(Vendor)
  end

  it 'has a name and array of inventory and check stock' do
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    vendor = Vendor.new("Rocky Mountain Fresh")
    expect(vendor.name).to eq("Rocky Mountain Fresh")
    expect(vendor.inventory).to eq({})
    expect(vendor.check_stock).to eq(0)
  end

  it 'can stock inventory' do
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    vendor = Vendor.new("Rocky Mountain Fresh")
    ventor.stock(item1, 30)
    expect(vendor.check_stock(item1)).to eq(30)


  end
end


item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})