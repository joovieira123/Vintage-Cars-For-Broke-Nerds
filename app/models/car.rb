class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :model, :location, presence: true
end
