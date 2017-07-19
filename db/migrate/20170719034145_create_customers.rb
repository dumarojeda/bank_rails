class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :document_number
      t.string :phone
      t.string :city
      t.string :email

      t.timestamps
    end
  end
end
