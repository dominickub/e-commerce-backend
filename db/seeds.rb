# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Rating.destroy_all
Item.destroy_all

user1 = User.create( username: "Dom", email: "dom@flatiron.com", password: "12345", password_confirmation: "12345")
user2 = User.create( username: "Pema", email: "pema@flatiron.com", password: "2345", password_confirmation: "2345")

item1 = Item.create( name: "one punch man", description: "funny figure", price: 10, quantity: 1, image: "no image", seller_id: user2.id)

rating1 = Rating.create( rating: 10, comment: "Awesome product",seller_id: user2.id, buyer_id: user1.id, item_id: item1.id)

