class RecipeFood < ApplicationRecord
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :food, uniqueness: { scope: :recipe, message: 'already exists in this recipe' }

  belongs_to :recipe
  belongs_to :food
end
