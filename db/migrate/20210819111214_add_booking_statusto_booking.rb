class AddBookingStatustoBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :status, :integer
  end
end
