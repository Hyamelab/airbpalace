class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :palaces, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_many :bookings_as_visitor, class_name: "Booking", dependent: :destroy
  has_many :bookings_as_owner, through: :palaces, source: :bookings

  has_one_attached :photo

  validates :first_name, presence: true, uniqueness: { scope: :last_name }
end
