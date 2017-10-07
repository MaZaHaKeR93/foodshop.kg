class RemoveImageFromEstablishments < ActiveRecord::Migration
  def change
  	change_table :establishments do |t|
  		t.remove :image
		end
  end
end
