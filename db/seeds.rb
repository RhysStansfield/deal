# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create name: 'Books'
Category.create name: 'Music, Games, Movies & TV'
Category.create name: 'Electronics & Computers'
Category.create name: 'Home, Garden, Pets & DIY'
Category.create name: 'Toys, Children & Baby'
Category.create name: 'Clothes, Shoes & Jewellery'
Category.create name: 'Sports & Outdoors'
Category.create name: 'Grocery, Health & Beauty'
Category.create name: 'Car & Motorbike'

Business.create company_name: 'Waterstones', email: 'ceo@waterstones.com', password: '123456789', password_confirmation: '123456789', category_id: 1
Business.create company_name: 'Bookplace', email: 'ceo@bookplace.com', password: '123456789', password_confirmation: '123456789', category_id: 1
Business.create company_name: 'HMV', email: 'ceo@hmv.com', password: '123456789', password_confirmation: '123456789', category_id: 2
Business.create company_name: 'Virgin', email: 'ceo@virgin.com', password: '123456789', password_confirmation: '123456789', category_id: 2
Business.create company_name: 'Apple', email: 'ceo@apple.com', password: '123456789', password_confirmation: '123456789', category_id: 3
Business.create company_name: 'Wilson', email: 'ceo@wilson.com', password: '123456789', password_confirmation: '123456789', category_id: 7
Business.create company_name: 'Adidas', email: 'ceo@adidas.com', password: '123456789', password_confirmation: '123456789', category_id: 7
