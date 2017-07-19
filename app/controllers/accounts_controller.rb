class AccountsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @accounts = Account.all    
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(accounts_params)
    if @account.save
      redirect_to accounts_path
    else
      redirect_to new_account_path
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to accounts_path
  end

  def accounts_params
    params.require(:account).permit(:account_number, :amount).merge(customer_id: params[:account][:customer_id].to_i)
  end
end
