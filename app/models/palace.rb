class Palace < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :description, :address, presence: true
  validates :description, length: { minimum: 12 }
end
