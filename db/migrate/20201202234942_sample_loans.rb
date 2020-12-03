class SampleLoans < ActiveRecord::Migration[5.2]
  def change
    Loan.create!(funded_amount: 500.00)
    Loan.create!(funded_amount: 200.00)
    Loan.create!(funded_amount: 2500.00)
  end
end
