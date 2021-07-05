class CashRegister
  attr_accessor :total, :discount, :item_list, :transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_list = []
    @transactions = []
  end
  
  def add_item(title, price, quantity = 1)
    @transactions << (price * quantity)
    quantity.times do
      @item_list << title
    end
    self.total += (price * quantity)
  end
  
  def apply_discount
    if @discount > 0
      @total -= (@total *= @discount)/100
      return "After the discount, the total comes to $#{total}."
    else return "There is no discount to apply."
    end
  end
  
  def items
    @item_list
  end
  
  def void_last_transaction
    @total -= @transactions[-1]
  end
  
end
