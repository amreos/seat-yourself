class DropUsers < ActiveRecord::Migration
  def change
  	drop_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.integer :points, default: 0
      t.string :password_digest

      t.timestamps
    end
  end
end
