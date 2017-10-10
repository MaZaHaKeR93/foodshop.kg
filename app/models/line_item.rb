class LineItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :establishment

  validates :quantity, presence: true, numericality: { greater_than: 0 }

  def total_price
  	self.quantity * self.price
  end
end
