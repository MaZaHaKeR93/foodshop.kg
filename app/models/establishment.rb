class Establishment < ActiveRecord::Base
	has_many :dishes, dependent: :destroy
	has_many :line_items, dependent: :destroy

  has_attached_file :image, styles: { medium: "300x300>", thumb: '150x150>' },
  													default_url: '/images/:style/default.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true, length: { maximum: 30 }
  validates :description, length: { maximum: 200 }
end
