class Recipe < ApplicationRecord
  has_many :materials
  has_many :steps
  accepts_nested_attributes_for :materials
  accepts_nested_attributes_for :steps
  mount_uploader :image, ImageUploader
end
