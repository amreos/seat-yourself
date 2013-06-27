class RemoveIndecesFromReservations < ActiveRecord::Migration
  def change
  	remove_index :reservations, :user_id
  	remove_index :reservations, :restaurant_id
  end
end
