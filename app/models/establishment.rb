class Establishment < ActiveRecord::Base
	has_many :categories, dependent: :destroy

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true, length: { maximum: 30 }
  validates :description, length: { maximum: 200 }
end
