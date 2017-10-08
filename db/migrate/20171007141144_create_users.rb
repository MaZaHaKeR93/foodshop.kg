class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.boolean :admin
      t.string :adress
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
