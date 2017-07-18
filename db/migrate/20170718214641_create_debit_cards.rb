class CreateDebitCards < ActiveRecord::Migration[5.1]
  def change
    create_table :debit_cards do |t|
      t.references :account, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
