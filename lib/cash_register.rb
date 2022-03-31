class CashRegister
    attr_accessor :total, :discount, :total, :items, :last_transaction

    def initialize discount = 0
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item (title, price, quantity = 1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        quantity.times {|items| self.items.push title}
    end

    def apply_discount
        self.total = (self.total - (self.total * (self.discount * 0.01))).to_f
        self.discount != 0 ? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
    end

    def void_last_transaction
        self.total -= last_transaction
    end
end