class RemoveDateAndTimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :date, :date
    remove_column :reservations, :time, :time
  end
end
