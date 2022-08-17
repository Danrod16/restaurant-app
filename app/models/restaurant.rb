class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :capacity, presence: true
  has_many :reviews, dependent: :destroy
end
