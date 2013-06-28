class ChangePointsInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :points, :integer, default: 50
  end
end
