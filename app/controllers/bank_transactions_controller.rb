class BankTransactionsController < ApplicationController
  before_action :set_bank_transaction, only: [:edit, :update, :destroy]
  before_action :authenticate_admin!

  def index
    @bank_transactions = BankTransaction.all
  end

  def new
    @bank_transaction = BankTransaction.new
  end

  def create
    @bank_transaction = BankTransaction.new(bank_transaction_params)
    if @bank_transaction.save
      redirect_to bank_transactions_path
    else
      @errors = @bank_transaction.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
    if @bank_transaction.update(bank_transaction)
      redirect_to bank_transactions_path
    else
      @errors = @bank_transaction.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @bank_transaction.destroy

    redirect_to bank_transactions_path
  end

  private
    def set_bank_transaction
      @bank_transaction = BankTransaction.find(params[:id])
    end
    def bank_transaction_params
      params.require(:bank_transaction).permit(:amount, :movement, :source).merge(debit_card_id: params[:bank_bank_transaction][:debit_card_id].to_i, account_id: params[:bank_bank_transaction][:account_id].to_i)
    end  
end
