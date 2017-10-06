class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.references :establishment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
