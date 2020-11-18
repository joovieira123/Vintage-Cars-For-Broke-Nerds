class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :car, uniqueness: { scope: :user }
  validates :date, presence: true
end
