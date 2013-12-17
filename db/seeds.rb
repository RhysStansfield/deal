# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
Business.create company_name: 'Waterstones', email: 'ceo@waterstones.com', password: '123456789', password_confirmation: '123456789', category: books
Business.create company_name: 'Bookplace', email: 'ceo@bookplace.com', password: '123456789', password_confirmation: '123456789', category: books
Business.create company_name: 'HMV', email: 'ceo@hmv.com', password: '123456789', password_confirmation: '123456789', category: music_games_movies_and_tv
Business.create company_name: 'Virgin', email: 'ceo@virgin.com', password: '123456789', password_confirmation: '123456789', category: music_games_movies_and_tv
Business.create company_name: 'Apple', email: 'ceo@apple.com', password: '123456789', password_confirmation: '123456789', category: electronics_and_computers
Business.create company_name: 'Toys R Us', email: 'ceo@toysrus.com', password: '123456789', password_confirmation: '123456789', category: toys_children_and_baby
Business.create company_name: 'Wilson', email: 'ceo@wilson.com', password: '123456789', password_confirmation: '123456789', category: sports_and_outdoors
Business.create company_name: 'Adidas', email: 'ceo@adidas.com', password: '123456789', password_confirmation: '123456789', category: sports_and_outdoors
