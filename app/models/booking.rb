class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  enum status: [:pending, :accepted, :declined]
end
