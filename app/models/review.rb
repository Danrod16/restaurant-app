class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :description, presence: true
end
