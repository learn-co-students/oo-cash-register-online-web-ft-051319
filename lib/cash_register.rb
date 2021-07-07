require 'pry'

class CashRegister
  attr_accessor :total, :employee_discount, :items, :price

  def initialize (employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount
    @items = []
  end

  def discount
    self.employee_discount
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
    @price = price
    self.total += price * quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    if @employee_discount
      @total -= @total * @employee_discount / 100
      return "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction()
    @total -= @price
  end

end
