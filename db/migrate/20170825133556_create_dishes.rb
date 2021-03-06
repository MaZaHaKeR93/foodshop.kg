class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :establishment, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end