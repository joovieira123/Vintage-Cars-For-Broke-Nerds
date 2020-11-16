class Booking < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :car, uniqueness: { scope: :user }
end
