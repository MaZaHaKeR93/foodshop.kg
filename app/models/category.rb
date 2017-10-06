class Category < ActiveRecord::Base
  belongs_to :establishment
  has_many :dishes, dependent: :destroy
end
