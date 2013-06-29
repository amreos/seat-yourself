class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant

	validates :user_id, :restaurant_id, 
		presence: true

	validates :party_size,
		inclusion: { in: 2..20, message: "We can only accommodate parties of size 2 to 20." }		

	def invalid_time_slot?
		(self.datetime.hour < 11 || self.datetime.hour > 19) || self.datetime.minute != 00
	end

	def before_now?
		self.datetime < DateTime.now
	end
end
