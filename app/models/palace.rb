class Palace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :description, :address, presence: true
  validates :description, length: { minimum: 12 }

  pg_search_scope :search_by_location,
                  against: [:address],
                  using: {
                    tsearch: { prefix: true }
                  }
end
