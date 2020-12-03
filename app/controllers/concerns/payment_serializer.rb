module PaymentSerializer
	include ActionView::Helpers::NumberHelper

	def payment_serializer(payment)
		{
			"amount" => number_to_currency(payment.amount),
			"processed_on" => payment.created_at
		}
	end
end
