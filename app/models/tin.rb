class Tin < ApplicationRecord
  is_impressionable	
  belongs_to :category1
  belongs_to :category2
  has_many :comments
  has_many :tagdetails
  mount_uploader :image, ImageUploader
end
