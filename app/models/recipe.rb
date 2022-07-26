class Recipe < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50}
  validates :description, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
  validates :public, presence: true
  validates :user_id, presence: true
end