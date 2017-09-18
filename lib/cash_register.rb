class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end


def add_item(title, price, quantity = 1)
  self.total += (price * quantity)
  self.total
    quantity.times do
    items << title
  end
  self.last_transaction = price * quantity
end

def apply_discount
  if self.discount == 0
    "There is no discount to apply."
  else
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{self.total}."
  end
end

def void_last_transaction
  self.total = self.total - self.last_transaction
end

end
