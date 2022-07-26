class Food < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :measurement_unit, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :user_id, presence: true
end
