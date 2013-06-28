class Reservation < ActiveRecord::Base
	# before_save :validate_time_slot

	belongs_to :user
	belongs_to :restaurant

	validates :user_id, :restaurant_id, 
		presence: true

	def invalid_time_slot?
		(self.datetime.hour < 11 || self.datetime.hour > 19) || self.datetime.minute != 00
	end

	def before_now?
		self.datetime < DateTime.now
	end
end
