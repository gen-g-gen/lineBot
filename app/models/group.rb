class Group < ApplicationRecord
  has_many :messages
  has_many :user_groups
  has_many :users, through: :user_groups, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  
  mount_uploader :image, ImageUploader
end
