class RemoveTimeslotIdFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :timeslot_id, :integer
  end
end
