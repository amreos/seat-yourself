class AddIndecesToReservations < ActiveRecord::Migration
  def change
  	add_index :reservations, :user_id
  	add_index :reservations, :restaurant_id
  end
end
