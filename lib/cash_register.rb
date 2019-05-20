require "pry"

class CashRegister

  attr_accessor :total, :discount, :last_item

  def initialize(discount=0)
    @total=0
    @discount=discount
    @@basket=[]
  end

  def add_item(title,price,qty=1)
    @last_item=price
    qty.times do
      @@basket << title
    end
    @total+=price*qty
  end

  def apply_discount
    if @discount==0
      "There is no discount to apply."
    else
      @total=@total*(1-(@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @@basket
  end

  def void_last_transaction
    @total-=@last_item
  end


end
