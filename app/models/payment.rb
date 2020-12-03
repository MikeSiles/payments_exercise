class Payment < ActiveRecord::Base
  belongs_to :loan
  validates_numericality_of :amount, on: :create
  validate :allowed_amount

  def allowed_amount
    max_amount = self.loan.current_balance
    errors.add(
        :amount,
        "cannot be larger than current loan balance (#{max_amount})"
    ) if amount > max_amount
  end
end
