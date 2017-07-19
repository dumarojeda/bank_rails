class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
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

  def update
    if @customer.update(customer_params)
      redirect_to customers_path
    else
      @errors = @customer.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @customer.destroy

    redirect_to customers_path
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :document_number, :phone, :city, :email)
    end
end
