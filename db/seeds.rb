# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





User.create(name: "Alex Naser",
						email: "c.a.naser@gmail.com",
						phone_number: "555-555-5555",
						password: "12345678",
						password_confirmation: "12345678")

Restaurant.create(name: "Black Hoof",
									image: "http://s3-media2.ak.yelpcdn.com/bphoto/YE2HY7EI5iBe4LYBAHoBpA/l.jpg",
									address: "928 Dundas Street W, Toronto, ON M6J 1W3",
									neighbourhood: "Little Italy",
									price_range: "$$$",
									summary: "If you love meat, you will LOVE The Black Hoof!! My friends and I tried many items on the menu and cannot recall a single one I didnt love!! So let's hone in on my faves!!!",
									menu: "http://theblackhoof.com/",
									category: "Gastro Pubs")

Restaurant.create(name: "Khao San Road",
									image: "http://s3-media1.ak.yelpcdn.com/bphoto/9pH4ff_FwDlZSt4mxAzj_Q/l.jpg",
									address: "326 Adelaide Street W, Toronto, ON M5V 1R3",
									neighbourhood: "Business District",
									price_range: "$$",
									summary: "The best pad thai in the city, I can't even bring myself to order anything else on the menu... and they do it hot if you ask. And I mean hot, not your typical namby pamby Toronto hot:) Chef special pad thai, man my mouth is watering just thinking about it. ",
									menu: "http://www.khaosanroad.ca/documents/Khao%20San%20Road%20-%20Lunch%20Menu.pdf",
									category: "Thai")

Restaurant.create(name: "Banh Mi Boys",
									image: "http://s3-media3.ak.yelpcdn.com/bphoto/oG8uUQ4o-t_blodLUFbzGw/l.jpg",
									address: "392 Queen Street W, Toronto, ON M5V 2A9",
									neighbourhood: "Queen Street West",
									price_range: "$",
									summary: "The place is chaotic like a fast food place at lunch time.  Get over it.",
									menu: "http://www.banhmiboys.com/menu.htm",
									category: "Vietnamese")

Restaurant.create(name: "Grand Electric",
									image: "http://s3-media1.ak.yelpcdn.com/bphoto/DqG_QP1vldlmuw4JevCVWw/l.jpg",
									address: "1330 Queen Street W, Toronto, ON M6K 1L4",
									neighbourhood: "Parkdale",
									price_range: "$$",
									summary: "Back home visiting Toronto and I'm afraid that my reviews might tend to be overrated. I was waffling between 4 and 5 stars, but when that happens I let the food speak to whether it goes up or down. The food here was fantastic. I loved everything I tasted and being a party of 4 and adventurous, we tried a lot of the menu. The standouts for me were the pork tinga and baha fish tacos.",
									menu: "http://grandelectricbar.com/",
									category: "Mexican")

Restaurant.create(name: "Ruby Watchco",
									image: "http://s3-media2.ak.yelpcdn.com/bphoto/6Ik8dx4M2Rl4VysnIZaVig/l.jpg",
									address: "730 Queen Street E, Toronto, ON M4M 1H2",
									neighbourhood: "Riverdale",
									price_range: "$$$",
									summary: "Delicious! Expensive but delicious. Celerity chef Lynne Crawford was working the night we were there. Our bartender/server was awesome. Food was delicious, wine was delicious, filtered water (Q Water), friendly staff... Such a great experience!",
									menu: "http://rubywatchco.ca/",
									category: "Canadian")

Restaurant.create(name: "Bak Chang Dong Soon Tofu",
									image: "http://s3-media2.ak.yelpcdn.com/bphoto/qcXD7uJUyTvR4p5QTXeZUw/l.jpg",
									address: "691 Bloor St W, Toronto, ON M6G 1L3",
									neighbourhood: "Koreatown",
									price_range: "$",
									summary: "I yelped this place and the food was amazing!! I am from India and it was my first time eating authentic Korean and I loved it enough to give it 5 stars. My Korean who is visiting here from Seoul food helped me decide what to eat. & even she said the food was REALLY GOOD and very authentic. Korean Grill house is very Canadian-ised  I can see the difference now. ",
									menu: "http://dicks.com",
									category: "Korean")