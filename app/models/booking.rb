class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :palace

  validates :begin_date, :end_date, presence: true
end
