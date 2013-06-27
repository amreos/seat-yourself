class Reservation < ActiveRecord::Base
	attr_accessor :date, :time

	has_one :user_id
	has_one :restaurant_id

	validates :user_id, :restaurant_id, 
		presence: true
end
