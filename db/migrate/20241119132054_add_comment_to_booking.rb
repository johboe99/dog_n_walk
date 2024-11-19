class AddCommentToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :date, :date
  end
end
