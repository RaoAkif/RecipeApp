class RecipeFoods < ApplicationRecord
  validates :quantity, presence: true
  validates :food_id, presence: true
  validates :recipe_id, presence: true
end