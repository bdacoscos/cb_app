class Recipe < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  has_attached_file :image, styles: { medium: "500x500!", thumb: "100x100>" }, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
