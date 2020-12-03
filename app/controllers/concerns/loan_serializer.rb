module LoanSerializer
	include ActionView::Helpers::NumberHelper
	include PaymentSerializer

	def loan_serializer(loan)
		payments = loan.payments.order("created_at")
		puts payments
		{
			"id" => loan.id,
			"funded_amount" => number_to_currency(loan.funded_amount),
			"current_balance" => number_to_currency(loan.current_balance),
			"loaned_on" => loan.created_at,
			"list_of_payments" => payments.map { |p| payment_serializer(p) }
		}
	end
end
