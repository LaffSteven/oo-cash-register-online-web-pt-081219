class CashRegister
  
  attr_accessor :total, :items, :discount
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end
  
  def add_item(product_name, product_price, product_qty = 1)
    @items << {product: product_name, price: product_price, qty: product_qty}
    self.add_to_price(product_price, product_qty)
  end
  
  def add_to_price(price, qty = 1)
    @total += (price * qty)
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * @discount)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items.map {|i| @items[i][:product]}
  end
  
end




