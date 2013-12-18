# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_image(name)
  File.open(Rails.root.join("db/seed_images/#{name}"))
end

Category.delete_all
books = Category.create name: 'Books'
music_games_movies_and_tv = Category.create name: 'Music, Games, Movies & TV'
electronics_and_computers = Category.create name: 'Electronics & Computers'
home_garden_pets_and_diy = Category.create name: 'Home, Garden, Pets & DIY'
toys_children_and_baby = Category.create name: 'Toys, Children & Baby'
clothes_shoes_and_jewellery = Category.create name: 'Clothes, Shoes & Jewellery'
sports_and_outdoors = Category.create name: 'Sports & Outdoors'
grocery_health_and_beauty = Category.create name: 'Grocery, Health & Beauty'
car_and_motorbike = Category.create name: 'Car & Motorbike'

Business.delete_all
Business.create company_name: 'Waterstones', email: 'ceo@waterstones.com', password: '123456789', password_confirmation: '123456789', category: books, avatar: seed_image('waterstones_avatar.jpg')
Business.create company_name: 'Bookplace', email: 'ceo@bookplace.com', password: '123456789', password_confirmation: '123456789', category: books, avatar: seed_image('waterstones_avatar.jpg')
Business.create company_name: 'HMV', email: 'ceo@hmv.com', password: '123456789', password_confirmation: '123456789', category: music_games_movies_and_tv, avatar: seed_image('hmv.jpg')
Business.create company_name: 'Virgin', email: 'ceo@virgin.com', password: '123456789', password_confirmation: '123456789', category: music_games_movies_and_tv, avatar: seed_image('virgin.jpg')
Business.create company_name: 'Apple', email: 'ceo@apple.com', password: '123456789', password_confirmation: '123456789', category: electronics_and_computers, avatar: seed_image('apple.jpg')
Business.create company_name: 'Toys R Us', email: 'ceo@toysrus.com', password: '123456789', password_confirmation: '123456789', category: toys_children_and_baby, avatar: seed_image('toysrus.jpg')
Business.create company_name: 'Burberry', email: 'ceo@burberry.com', password: '123456789', password_confirmation: '123456789', category: clothes_shoes_and_jewellery, avatar: seed_image('burberry.jpg')
Business.create company_name: 'Wilson', email: 'ceo@wilson.com', password: '123456789', password_confirmation: '123456789', category: sports_and_outdoors, avatar: seed_image('wilson.jpg')
Business.create company_name: 'Adidas', email: 'ceo@adidas.com', password: '123456789', password_confirmation: '123456789', category: sports_and_outdoors, avatar: seed_image('adidas_index.png')
Business.create company_name: 'Origins', email: 'ceo@origins.com', password: '123456789', password_confirmation: '123456789', category: grocery_health_and_beauty, avatar: seed_image('adidas_index.png')
Business.create company_name: 'Ford', email: 'ceo@ford.com', password: '123456789', password_confirmation: '123456789', category: car_and_motorbike, avatar: seed_image('origins.jpg')

# Offer.delete_all
# Offer.create product: 'Harry Potter and the Philosophers Stone', product_description: 'A delightful romp through happy wizard land with a variety of memorable characters', price: 8, :RRP => 14, business_id: 1, available_from: "13/12/2013", available_to: "21/12/2013", users_time_availablity: 30, avatar: seed_image('Harry_Potter_atps.jpg')
# Offer.create product: 'How to be Black', product_description: "How to Be Black is a book written by American comedian Baratunde Thurston. It is an autobiographical account of Thurston's life and upbringing and discusses stereotypes of African Americans, their social identities, and their relationships with their white peers", price: 10, :RRP => 17, business_id: 2, available_from: "15/12/2013", available_to: "20/12/2013", users_time_availablity: 30, avatar: seed_image('How_to_be_Black.jpg')
# Offer.create product: 'Antichrist - Akercocke', product_description: "Blackened progressive death metal of course, everyone's favorite, from London's finest - Akercocke.", price: 10, :RRP => 15, business_id: 3, available_from: "15/12/2013", available_to: "21/12/2013", users_time_availablity: 30, avatar: seed_image('antichrist.jpg')
# Offer.create product: 'Something by Liberty X?', product_description: "Who?!", price: 1, :RRP => 10, business_id: 4, available_from: "15/12/2013", available_to: "21/12/2013", users_time_availablity: 30, avatar: seed_image('libx.jpg')
# Offer.create product: 'MacBook Pro', product_description: "Badass laptop of supreme sexulence and delightfulness", price: 10, :RRP => 1000, business_id: 5, available_from: "17/12/2013", available_to: "20/12/2013", users_time_availablity: 30, avatar: seed_image('mac.jpg')
# Offer.create product: 'Ipod', product_description: "Listen to your favourite gangsta rap, on the go!", price: 100, :RRP => 200, business_id: 5, available_from: "18/12/2013", available_to: "01/01/2014", users_time_availablity: 30, avatar: seed_image('ipod.jpg')
# Offer.create product: 'Rocking Horse', product_description: "Rock your horse all day, now for kids!", price: 1000, :RRP => 2000, business_id: 6, available_from: "02/01/2014", available_to: "03/01/2014", users_time_availablity: 30, avatar: seed_image('horse.jpg')
# Offer.create product: 'Lego', product_description: "Land mines for feet", price: 10, :RRP => 200, business_id: 6, available_from: "18/12/2013", available_to: "20/12/2013", users_time_availablity: 30, avatar: seed_image('lego.jpg')
# Offer.create product: 'Pokemon', product_description: "Got to catch em' all, Pokemon!", price: 100, :RRP => 200, business_id: 6, available_from: "18/12/2013", available_to: "20/12/2013", users_time_availablity: 30, avatar: seed_image('pokemon.jpg')
# Offer.create product: 'Small Orchard Bag', product_description: "Part of the London Classic collection", price: 600, :RRP => 895, business_id: 7, available_from: "20/12/2013", available_to: "06/01/2014", users_time_availablity: 30, avatar: seed_image('burberrybag.jpg')
# Offer.create product: 'Nadal Tennis Racket', product_description: "Play like the man himself", price: 100, :RRP => 145, business_id: 8, available_from: "20/12/2013", available_to: "06/01/2014", users_time_availablity: 30, avatar: seed_image('nadalracket.jpg')
# Offer.create product: 'Wilson US Open Tennis Ball', product_description: "Unique special edition ball", price: 50, :RRP => 90, business_id: 8, available_from: "20/12/2013", available_to: "06/01/2014", users_time_availablity: 30, avatar: seed_image('tennisball.jpg')
# Offer.create product: 'Moisturiser', product_description: "It's good for keeping your skin moist", price: 10, :RRP => 20, business_id: 9, available_from: "19/12/2013", available_to: "22/12/2013", users_time_availablity: 30, avatar: seed_image('moisture.jpg')
# Offer.create product: 'Creamy Stuff?', product_description: "Seriously, it's good for your face.", price: 10, :RRP => 20, business_id: 9, available_from: "19/12/2013", available_to: "22/12/2013", users_time_availablity: 30, avatar: seed_image('originstuff.jpg')
# Offer.create product: 'Fiesta', product_description: "Ever wanted to be a race car driver? Then don't buy this car.", price: 5, :RRP => 6, business_id: 10, available_from: "18/12/2013", available_to: "28/12/2013", users_time_availablity: 30, avatar: seed_image('fiesta.jpg')
# Offer.create product: 'Ford GT', product_description: "This is a car, oh yeah", price: 7, :RRP => 20, business_id: 10, available_from: "18/12/2013", available_to: "01/01/2014", users_time_availablity: 30, avatar: seed_image('ford.jpg')

Customer.delete_all
Customer.create email: '1@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '2@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '3@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '4@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '5@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '6@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '7@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '8@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '9@example.com', password: '123456789', password_confirmation: '123456789'
Customer.create email: '10@example.com', password: '123456789', password_confirmation: '123456789'

# Impression.delete_all
# Impression.create user_id: 12, offer_id: 1, created_at: "13/12/2013"
# Impression.create user_id: 12, offer_id: 1, created_at: "13/12/2013"
# Impression.create user_id: 12, offer_id: 1, created_at: "14/12/2013"
# Impression.create user_id: 12, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 12, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 12, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 12, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 12, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 13, offer_id: 1, created_at: "13/12/2013"
# Impression.create user_id: 13, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 13, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 13, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 13, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 13, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 13, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 14, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 14, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 14, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 14, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 14, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "14/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "14/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "14/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 15, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 16, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 18, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 18, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 18, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 18, offer_id: 1, created_at: "19/12/2013"
# Impression.create user_id: 18, offer_id: 1, created_at: "19/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "15/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "19/12/2013"
# Impression.create user_id: 19, offer_id: 1, created_at: "19/12/2013"
# Impression.create user_id: 21, offer_id: 1, created_at: "16/12/2013"
# Impression.create user_id: 21, offer_id: 1, created_at: "19/12/2013"
# Impression.create user_id: 21, offer_id: 1, created_at: "19/12/2013"

# Impression.create user_id: 12, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 12, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 12, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 12, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 12, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 12, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 12, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 12, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 13, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 13, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 13, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 13, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 13, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 13, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 13, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 14, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 14, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 14, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 14, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 14, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "20/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "20/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "20/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 15, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 16, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 18, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 18, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 18, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 18, offer_id: 2, created_at: "19/12/2013"
# Impression.create user_id: 18, offer_id: 2, created_at: "19/12/2013"
# Impression.create user_id: 19, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 19, offer_id: 2, created_at: "15/12/2013"
# Impression.create user_id: 20, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 20, offer_id: 2, created_at: "18/12/2013"
# Impression.create user_id: 20, offer_id: 2, created_at: "19/12/2013"
# Impression.create user_id: 20, offer_id: 2, created_at: "19/12/2013"
# Impression.create user_id: 20, offer_id: 2, created_at: "16/12/2013"
# Impression.create user_id: 20, offer_id: 2, created_at: "19/12/2013"
# Impression.create user_id: 20, offer_id: 2, created_at: "19/12/2013"

# Click.delete_all
# Click.create user_id: 12, offer_id: 1, created_at: "13/12/2013"
# Click.create user_id: 13, offer_id: 1, created_at: "18/12/2013" 
# Click.create user_id: 14, offer_id: 1, created_at: "16/12/2013" 
# Click.create user_id: 15, offer_id: 1, created_at: "15/12/2013" 
# Click.create user_id: 17, offer_id: 1, created_at: "13/12/2013"
# Click.create user_id: 18, offer_id: 1, created_at: "17/12/2013" 
# Click.create user_id: 20, offer_id: 1, created_at: "18/12/2013" 
# Click.create user_id: 12, offer_id: 2, created_at: "15/12/2013"
# Click.create user_id: 13, offer_id: 2, created_at: "15/12/2013" 
# Click.create user_id: 14, offer_id: 2, created_at: "16/12/2013" 
# Click.create user_id: 15, offer_id: 2, created_at: "17/12/2013" 
# Click.create user_id: 16, offer_id: 2, created_at: "17/12/2013"
# Click.create user_id: 18, offer_id: 2, created_at: "17/12/2013" 
# Click.create user_id: 21, offer_id: 2, created_at: "19/12/2013" 

# Conversion.delete_all
# Conversion.create customer_id: 13, offer_id: 1, created_at: "18/12/2013" 
# Conversion.create customer_id: 14, offer_id: 1, created_at: "16/12/2013" 
# Conversion.create customer_id: 15, offer_id: 2, created_at: "17/12/2013" 
# Conversion.create customer_id: 18, offer_id: 1, created_at: "17/12/2013"
# Conversion.create customer_id: 18, offer_id: 2, created_at: "17/12/2013" 
# Conversion.create customer_id: 21, offer_id: 2, created_at: "19/12/2013" 
