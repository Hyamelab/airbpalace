class Palace < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :description, :address, presence: true
  validates :description, length: { minimum: 12 }
end
