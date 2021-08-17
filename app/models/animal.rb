class Animal < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :species, inclusion: { in: ["Horse", "Cow", "Pig", "Dog", "Chicken", "Cat", "Goat", "Sheep", "Duck", "Goose"] }
end
