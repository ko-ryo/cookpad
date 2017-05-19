class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :recipes, dependent: :destroy
  has_many :likes, dependent: :destroy
  accepts_nested_attributes_for :recipes, allow_destroy: true
  accepts_nested_attributes_for :likes, allow_destroy: true
end
