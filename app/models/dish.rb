class Dish < ActiveRecord::Base
  belongs_to :establishment
  validates :title, presence: true, length: { maximum: 30 }
  validates :description, length: { maximum: 200 }
end
