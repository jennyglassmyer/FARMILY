class Animal < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user
  validates :species, inclusion: { in: ["Horse", "Cow", "Pig", "Dog", "Chicken", "Cat", "Goat", "Sheep", "Duck", "Goose"] }
  validates :name, presence: true
  validates :species, presence: true
  validates :gender, presence: true
  validates :personality, presence: true
  validates :description, presence: true
  validates :care_level, presence: true
  validates :age, presence: true
  validates :price_per_day, presence: true
  validates :care_instructions, presence: true

  CARE_LEVEL = ["Easy", "Medium", "Hard"]

  include PgSearch::Model
  pg_search_scope :search_by_species,
    against: [ :species ],
    using: {
      tsearch: { prefix: true }
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  before_create :set_address
  
  def set_address
    self.address = user.address
  end
end
