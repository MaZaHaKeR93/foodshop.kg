class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :line_items, dependent: :destroy
  devise :database_authenticatable, :registerable, :validatable
  validates :username, presence: true, length: { minimum: 3, maximum: 20 }
  validates :adress, presence: true, length: { minimum: 3, maximum: 50 }
  validates :phone_number, presence: true, length: { minimum: 5, maximum: 20 }
end
