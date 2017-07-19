class AccountsController < ApplicationController
  before_action :set_account, only: [:edit, :update, :destroy]
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
      @errors = @account.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
    if @account.update(accounts_params)
      redirect_to accounts_path
    else
      @errors = @account.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @account.destroy
    redirect_to accounts_path
  end
  private
    def set_account
      @account = Account.find(params[:id])
    end
    def accounts_params
      params.require(:account).permit(:account_number, :amount).merge(customer_id: params[:account][:customer_id].to_i)
    end
end
