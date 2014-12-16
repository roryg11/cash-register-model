require 'cash_register'

describe CashRegister do
  describe "#total" do
    it 'starts at 0' do
      cash_register = CashRegister.new

      total = cash_register.total

      expect(total).to eq(0)
    end
  end

  describe "#purchase" do
    it 'adds an amount to the total' do
      cash_register = CashRegister.new
      cash_register.purchase(25.5)

      total = cash_register.total

      expect(total).to eq(25.5)
    end

    it 'adds multiple items to the total' do
      cash_register = CashRegister.new
      cash_register.purchase(25.5)
      cash_register.purchase(5.5)

      total = cash_register.total

      expect(total).to eq(31.0)
    end
  end

  describe "#pay" do
    it 'takes in money from the purchaser to even balance' do
      cash_register = CashRegister.new
      cash_register.purchase(25.5)
      cash_register.purchase(5.5)

      change = cash_register.pay(31.0)

      expect(change).to eq(0)
    end

    it 'takes in money from the purchaser and gives change' do
      cash_register = CashRegister.new
      cash_register.purchase(25.5)
      cash_register.purchase(5.5)

      change = cash_register.pay(32.5)

      expect(change).to eq(1.5)
    end
  end
end
