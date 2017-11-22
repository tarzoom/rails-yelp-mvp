class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, :restaurant, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5],
  message: "%{value} is not a valid category" }
end