class FixColumnCart < ActiveRecord::Migration
  def change
  	change_table :carts do |t|
  		t.remove :status
		end
  end
end
