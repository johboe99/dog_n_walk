class AddTimeToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :time, :time
  end
end
