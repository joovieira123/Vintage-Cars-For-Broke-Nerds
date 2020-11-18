class AddDateAndCommentsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :date, :datetime
    add_column :bookings, :comments, :string
  end
end
