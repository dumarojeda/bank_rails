class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.integer :amount
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
