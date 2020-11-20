class CashRegister
    attr_accessor :total, :discount, :title, :last_item_cost

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @title = []
        @last_item_cost = 0
    end

    def add_item(title, price, quantity=1)
        quantity.times {@title << title}
        @total += price * quantity
        @last_item_cost = price * quantity
    end

    def apply_discount
        @total =  (@total * (100 - @discount)/100).to_i
        @discount == 0? "There is no discount to apply." : "After the discount, the total comes to $#{self.total}."
    end

    def items
        @title
    end

    def void_last_transaction
        @total -= @last_item_cost
    end
end