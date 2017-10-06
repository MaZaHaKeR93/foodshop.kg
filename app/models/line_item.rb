class LineItem < ActiveRecord::Base
  belongs_to :cart

  def pre_total_price
  	self.quantity * self.price
  end
end
