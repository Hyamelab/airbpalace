class Palace < ApplicationRecord
  belongs_to :user

  validates :name, :description, :address, presence: true
  validates :description, length: { minimum: 12 }
end
