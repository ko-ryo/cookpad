class Step < ApplicationRecord
  belongs_to :recipe, optional: true
  # validates :recipe_id, presence: true
end
