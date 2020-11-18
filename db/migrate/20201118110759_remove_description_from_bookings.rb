class RemoveDescriptionFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :description
  end
end
