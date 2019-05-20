class CashRegister

    attr_accessor :total, :discount, :cart, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(item, price, quantity = 1)
        quantity.times do
            self.cart << item
        end
        self.total += (price * quantity)
        self.last_transaction = (price * quantity)
    end

    def apply_discount
        if self.discount != 0
            self.total = self.total - (self.total * (self.discount.to_f / 100.0))
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        return self.cart
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end

end

