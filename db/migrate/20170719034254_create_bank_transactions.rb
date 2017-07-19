class CreateBankTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_transactions do |t|
      t.integer :amount
      t.string :movement
      t.string :source
      t.references :debit_card, foreign_key: true
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
