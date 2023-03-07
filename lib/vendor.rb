class Vendor
  attr_reader :name,
              :inventory,
              :check_stock

  def initialize(name)
    @name = name
    @inventory = {}
    @check_stock = 0
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, quantity)
    @inventory << { item => quantity }
  end
end
