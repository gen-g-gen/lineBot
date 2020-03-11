class Group < ApplicationRecord
  has_many :messages
  has_many :user_groups
  has_many :users, through: :user_groups, dependent: :destroy

  
  mount_uploader :image, ImageUploader

  validates :name,            presence: true, uniqueness: true
  validates :image,           presence: true
end
