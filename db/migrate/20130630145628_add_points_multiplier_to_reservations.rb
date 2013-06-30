class AddPointsMultiplierToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :points_multiplier, :integer, default: 25
  end
end
