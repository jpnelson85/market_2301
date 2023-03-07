class Vendor
  attr_reader :name,
              :inventory,
              :check_stock

  def initialize(name)
    @name = name
    @inventory = {}
    @check_stock = 0
  end

  def stock(item, quantity)
    @inventory << { item => quantity }
  end
end
