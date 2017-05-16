class Recipe < ApplicationRecord
  has_many :materials, dependent: :destroy
  has_many :steps, dependent: :destroy
  has_many :likes, dependent: :destroy

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

  belongs_to :user, optional: true
  accepts_nested_attributes_for :materials, allow_destroy: true
  accepts_nested_attributes_for :steps, allow_destroy: true
  mount_uploader :image, ImageUploader
end
