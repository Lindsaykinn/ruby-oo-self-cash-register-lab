
class CashRegister
    attr_accessor :total, :discount, :quantity, :items

def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
end

def add_item (title, price, quantity = 1)
    @last_transaction = price * quantity
    while quantity >= 1
        @items.push(title)
        @total += price
        quantity = quantity - 1
    end
    self.total += (quantity * price)
    
  end

def apply_discount
     @total -= (@total * @discount.to_f / 100).to_i
     puts("this is the discount: #{@discount}")
     if @discount > 0
        "After the discount, the total comes to $#{@total}."
     else
       "There is no discount to apply."
     end
     
     
    end

    def void_last_transaction
        @items.pop()
        @total -= @last_transaction
  

end

end

   