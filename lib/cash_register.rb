class CashRegister
  attr_accessor :total
  attr_reader :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def self.a_class_method
    puts self
  end
  
  def add_item(item, price, quantity = 1)
  self.total += price * quantity
  end
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0-discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def new_register
  end
  
end
