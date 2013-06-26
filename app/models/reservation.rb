class Reservation < ActiveRecord::Base
	has_one :user_id, :restaurant_id, :timeslot_id

	validates :user_id, :restaurant_id, :timeslot_id,
		presence: true
end
