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
end
