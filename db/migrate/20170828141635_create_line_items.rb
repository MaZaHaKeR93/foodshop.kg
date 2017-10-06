class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :title
      t.decimal :price
      t.integer :quantity
      t.references :cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
