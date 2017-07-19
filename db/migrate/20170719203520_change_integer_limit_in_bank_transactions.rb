class ChangeIntegerLimitInBankTransactions < ActiveRecord::Migration[5.1]
  def change
    change_column :bank_transactions, :amount, :integer, limit: 8
  end
end
