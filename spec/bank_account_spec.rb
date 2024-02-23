# sa9-act2/bank_account_spec.rb
require 'bank_account'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      bank_account = BankAccount.new(100)
      bank_account.deposit(50)
      expect(bank_account.balance).to eq(150)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      bank_account = BankAccount.new(100)
      bank_account.withdraw(50)
      expect(bank_account.balance).to eq(50)
    end

    it "does not change the balance if insufficient funds" do
      bank_account = BankAccount.new(50)
      bank_account.withdraw(100)
      expect(bank_account.balance).to eq(50)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      bank_account = BankAccount.new(200)
      expect(bank_account.balance).to eq(200)
    end
  end
end
