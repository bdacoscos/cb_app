class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_attached_file :image, styles: { medium: "200x200#", thumb: "100x100!" }, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  has_many :recipes
  has_many :likes
  has_many :comments, dependent: :destroy

end
