class PaymentsController < ActionController::API
	include ErrorSerializer
	include PaymentSerializer

	def create
		loan = Loan.find(create_params[:loan_id])
		payment = Payment.new(
			loan: loan,
			amount: create_params[:amount]
		)
		if payment.save
			render json: payment_serializer(payment), status: :created
		else
			render json: error_serializer(payment), status: :unprocessable_entity
		end
	end

	private

	def create_params
		params.permit(:loan_id, :amount)
	end
end
