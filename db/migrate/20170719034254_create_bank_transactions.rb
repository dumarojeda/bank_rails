class CreateBankTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_transactions do |t|
      t.integer :origin_account
      t.integer :target_account
      t.integer :amount
      t.string :movement
      t.string :source

      t.timestamps
    end
  end
end
