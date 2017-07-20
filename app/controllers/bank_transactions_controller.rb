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

    if @bank_transaction.valid?
      origin_account = Account.find(@bank_transaction.origin_account)
      target_account = Account.find(@bank_transaction.target_account)
      amount_transaction = @bank_transaction.amount

      if origin_account.amount > amount_transaction
        if origin_account != target_account
          origin_account.amount = origin_account.amount - amount_transaction
          origin_account.save!
          target_account.amount = target_account.amount + amount_transaction
          target_account.save!

          @bank_transaction.save!
          redirect_to bank_transactions_path
        else
          @bank_transaction.errors[:base] << "No se puede transferir dinero a la misma cuenta"
          @errors = @bank_transaction.errors.full_messages
          render 'new'
        end
      else
        @bank_transaction.errors[:base] << "No se puede Transferir, la cantidad es mayor a los fondos"
        @errors = @bank_transaction.errors.full_messages
        render 'new'
      end
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
      params.require(:bank_transaction).permit(:origin_account, :target_account, :amount, :movement, :source)
    end  
end
