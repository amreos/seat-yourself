class AddCapacityToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :capacity, :integer, default: 100
  end
end
