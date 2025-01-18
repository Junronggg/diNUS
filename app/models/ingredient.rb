class Ingredient < ApplicationRecord
  # Add validations or any other logic here if needed
  validates :name, presence: true
  validates :category, presence: true
end
