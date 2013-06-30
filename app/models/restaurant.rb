class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, through: :reservations
	belongs_to :category

	validates :name,
	  presence: true,
		length: { maximum: 50 }

	validates :address,
		presence: true

	validates :neighbourhood,
		presence: true

	validates :price_range,
		presence: true

	validates :summary,
		presence: true

	validates :menu,
	  presence: true

	def full?(datetime, requested_party_size)
		seats_left(datetime) <= requested_party_size
	end

	def opening_hour
		self.opening_time.hour
	end

	def closing_hour
		self.closing_time.hour
	end

  private
 
		  # calculates seats left at a given timeslot
		  def seats_left(datetime)
		  	self.capacity - seats_taken(datetime)
		  end

		  # calculates total seats booked at a given timeslot
		  def seats_taken(datetime)
				# preparing the counter
				people_in_seats = 0

				# adding all reservations
				reservations_at_this_timeslot(datetime).each do |reservation|
					people_in_seats += reservation.party_size
				end

				# return total seats already booked
		    people_in_seats
		  end

		  # finds all reservations for a given timeslot
		  def reservations_at_this_timeslot(datetime)
		  	self.reservations.where(datetime: datetime)
		  end
end
