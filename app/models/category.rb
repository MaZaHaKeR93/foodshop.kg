class Category < ActiveRecord::Base
  belongs_to :establishment
  has_many :dishes, dependent: :destroy

  validates :title, presence: true, length: { maximum: 30 }
end
