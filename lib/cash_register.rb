require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_item, :lastsum, :items


  # attr_writer :discount
  @@all = []
  def initialize (discountvar= 0)
    @discount= discountvar
    self.items= []
    self.total= 0
  end

  def add_item (name_item, price, quantity=1)
    self.lastsum= price*quantity
    self.total += self.lastsum
    last_item = name_item
    index=0
    while index < quantity do
      self.items << name_item
      index +=1
    end
    # binding.pry
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      subtotal = total * (100 - self.discount) / 100.0
      self.total = subtotal
      "After the discount, the total comes to $#{self.total.round}."
    end
  end
    def void_last_transaction
      self.total -= self.lastsum

    end




end
