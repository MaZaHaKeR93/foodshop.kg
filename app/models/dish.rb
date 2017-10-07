class Dish < ActiveRecord::Base
  belongs_to :category
  validates :title, presence: true, length: { maximum: 30 }
  validates :price, presence: true
  validates :description, length: { maximum: 200 }
end
