require "pry"

class CashRegister
  attr_accessor :discount, :total, :item, :price, :quantity, :items, :last_price
  
  
  def initialize(discount = 0)
    @items = []
    @discount = discount
    @item = item
    @price = price
    @last_price = last_price
    @quantity = quantity
    @total = 0
    
  end
  
  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    @quantity = quantity
    quantity.times do
      @items << item
      @total += price
      @last_price = price
    end
  end
    
  def apply_discount
    if @discount > 0
    @total = @total.to_f*(1-(@discount.to_f*0.01))
    "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_price
  end
  
end