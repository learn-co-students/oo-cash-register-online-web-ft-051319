class CashRegister
  attr_accessor :total, :discount, :add_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, increase)
    @title = title
    @price = price
    @increase = increase
  end

end
