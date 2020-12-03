class Loan < ActiveRecord::Base
	has_many :payments
	def current_balance
		payments = self.payments.pluck(:amount)
		paid_amount = payments.sum
		self.funded_amount - paid_amount
	end
end
