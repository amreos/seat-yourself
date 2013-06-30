class AddOpeningTimeAndClosingTimeToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :opening_time, :time, default: Time.new(1987, 9, 1, 11)
    add_column :restaurants, :closing_time, :time, default: Time.new(1987, 9, 1, 19)
  end
end
