require 'factory_girl'

FactoryGirl.define do
	factory :user do
    name "Database Tester"
	  email "example@gmail.com"
		phone_number "123-555-5555"
		password "12345678"
		password_confirmation "12345678"
	end

	factory :restaurant do
		name "Khao San Road"
		image "http://s3-media1.ak.yelpcdn.com/bphoto/9pH4ff_FwDlZSt4mxAzj_Q/l.jpg"
		address "326 Adelaide Street W, Toronto, ON M5V 1R3"
		neighbourhood "Business District"
		price_range "$$"
		summary "The best pad thai in the city, I can't even bring myself to order anything else on the menu... and they do it hot if you ask. And I mean hot, not your typical namby pamby Toronto hot:) Chef special pad thai, man my mouth is watering just thinking about it. "
		menu "http://www.khaosanroad.ca/documents/Khao%20San%20Road%20-%20Lunch%20Menu.pdf"
		category
	end

	factory :reservation do
		user  
		restaurant 
		created_at "2013-07-01 18:12:35" 
		updated_at "2013-07-01 18:12:35" 
		party_size 2 
		datetime "2013-07-02 16:00:00".to_datetime 
		points_multiplier 25
	end

	factory :category do
		name "Thai"
	end
end