# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Example User",
						email: "example@example.com",
						phone_number: "555-555-5555",
						password: "foobar",
						password_confirmation: "foobar")

Restaurant.create(name: "Black Hoof",
									address: "928 Dundas Street W, Toronto, ON M6J 1W3",
									neighbourhood: "Little Italy",
									price_range: "$$$",
									summary: "If you love meat, you will LOVE The Black Hoof!! My friends and I tried many items on the menu and cannot recall a single one I didnt love!! So let's hone in on my faves!!!",
									menu: "http://theblackhoof.com/",
									category: "Gastro Pubs")

Restaurant.create(name: "Khao San Road",
									address: "326 Adelaide Street W, Toronto, ON M5V 1R3",
									neighbourhood: "Business District",
									price_range: "$$",
									summary: "The best pad thai in the city, I can't even bring myself to order anything else on the menu... and they do it hot if you ask. And I mean hot, not your typical namby pamby Toronto hot:) Chef special pad thai, man my mouth is watering just thinking about it. ",
									menu: "http://www.khaosanroad.ca/documents/Khao%20San%20Road%20-%20Lunch%20Menu.pdf",
									category: "Thai")

Restaurant.create(name: "Banh Mi Boys",
									address: "392 Queen Street W, Toronto, ON M5V 2A9",
									neighbourhood: "Queen Street West",
									price_range: "$",
									summary: "The place is chaotic like a fast food place at lunch time.  Get over it.",
									menu: "http://www.banhmiboys.com/menu.htm",
									category: "Vietnamese")