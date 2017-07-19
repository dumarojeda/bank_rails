class CustomersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    else
      @errors = @customer.errors.full_messages
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  private
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :document_number, :phone, :city, :email)
    end
end
