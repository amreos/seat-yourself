class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant

	validates :user_id, :restaurant_id, 
		presence: true

	validates :party_size,
		inclusion: { in: 2..20, message: "We can only accommodate parties of size 2 to 20." }

	validate :restaurant_open, :restaurant_not_full, :in_the_future, :valid_time

	def formatted_time 
		self.datetime.strftime("%A, %m/%d at %I:%M %p")
	end

	private

			def restaurant_open
				if (self.datetime.hour < 11 || self.datetime.hour > 19)
					errors.add(:datetime, "I'm sorry, our hours are 11a to 8p.")
				end
			end

			def in_the_future
				if self.datetime < DateTime.now
					errors.add(:datetime, "We can't accept reservations for... um... times in the past.")
				end
			end

			def valid_time
				if self.datetime.minute != 00
					errors.add(:datetime, "We only accept reservations on the hour.")
				end
			end

			def restaurant_not_full
				if self.restaurant.full?(self.datetime, self.party_size)
					errors.add(datetime: "I'm sorry, but we're full at that time.")
		    end
		  end
end
