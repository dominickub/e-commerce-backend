# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create( username: "Dom", email: dom@flatiron.com, password: "12345", password_confirmation: "12345")
user2 = User.create( username: "Pema", email: pema@flatiron.com, password: "2345", password_confirmation: "2345")
