class DebitCardsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @debit_cards = DebitCard.all
  end

  def new
    @debit_card = DebitCard.new
  end

  def create
    @debit_card = DebitCard.new(debit_cards_params)
    if @debit_card.save
      redirect_to debit_cards_path
    else
      @errors = @debit_card.errors.full_messages
      render 'new'
    end
  end

  def destroy
    @debit_card = DebitCard.find(params[:id])
    @debit_card.destroy

    redirect_to debit_cards_path
  end

  def debit_cards_params
    params.require(:debit_card).permit(:account_id, :customer_id).merge(account_id: params[:debit_card][:account_id].to_i, customer_id: params[:debit_card][:customer_id].to_i)
  end
end
