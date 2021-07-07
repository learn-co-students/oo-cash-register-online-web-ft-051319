class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @transactions = []
  end
  
  def add_item(title, price, quantity = 1)
    transaction = quantity * price
      @total += transaction
      @transactions << transaction
      quantity.times do
      @items << title
 end
  end
  
  def apply_discount
    # discount comes in as 20(%) instead of .20, so we divide by 100.0 so it is float and not an integer -- integers cannot have decimal values
    @total = @total - (@total*(discount/100.0))
   if discount > 0 
     "After the discount, the total comes to $#{@total.to_i}."
   else
     "There is no discount to apply."
   end
  end
  
  def void_last_transaction
    @total -= @transactions.pop
  end
end
