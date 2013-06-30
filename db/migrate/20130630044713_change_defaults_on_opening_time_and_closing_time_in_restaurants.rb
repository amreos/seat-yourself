class ChangeDefaultsOnOpeningTimeAndClosingTimeInRestaurants < ActiveRecord::Migration
  def change
  	change_column :restaurants, :opening_time, :time, default: Time.local(1987, 9, 1, 11)
    change_column :restaurants, :closing_time, :time, default: Time.local(1987, 9, 1, 19)
  end
end
