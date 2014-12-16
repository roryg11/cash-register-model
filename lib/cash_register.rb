class CashRegister

  def initialize
    @total = 0
    @pay = 0
  end

  def total
    @total
  end

  def purchase(amount)
    @total = @total += amount.to_f
  end

  def pay(payment_price)
    @pay = (@total -= payment_price).abs
  end

end
