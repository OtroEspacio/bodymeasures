class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_names
      t.string :email

      t.timestamps null: false
    end
  end
end
