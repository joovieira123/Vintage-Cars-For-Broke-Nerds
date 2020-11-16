class ChangeBookingIdForCarIdInBooking < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :booking, foreign_key: true
    add_reference :bookings, :car, foreign_key: true
  end
end

