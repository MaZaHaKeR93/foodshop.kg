class FixColumns < ActiveRecord::Migration
  def change
  	change_table :dishes do |t|
  		t.remove :establishment_id
  		t.references :category, index: true, foreign_key: true
		end
  end
end
