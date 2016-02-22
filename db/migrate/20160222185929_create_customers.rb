class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_names
      t.string :email
      t.integer :status
      t.string :phone_number
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
