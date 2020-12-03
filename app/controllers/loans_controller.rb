class LoansController < ActionController::API
  include LoanSerializer

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: 'not_found', status: :not_found
  end

  def index
    render json: Loan.all.map{ |i| loan_serializer(i) }
  end

  def show
    render json: loan_serializer(Loan.find(params[:id]))
  end
end
