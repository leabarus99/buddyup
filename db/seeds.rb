# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Friend.destroy_all
User.destroy_all

user_1 = User.create!(email: 'user_1@gmail.com', password:'lololo', password_confirmation:'lololo')
user_2 =User.create!(email: 'user_2@gmail.com', password:'lululu', password_confirmation:'lululu')

friend_1 = Friend.create!(first_name: 'Toto', last_name: 'Dubois', age: '24', personnality: 'cool', hobby: 'sport, cuisine', availability: '14/07/2022', localisation: 'Marseille', event_category: 'Bowling',  user: user_1)

reservation = Reservation.create!(date: 'user_2@gmail.com', location:'Marseille', user: user_1, friend: friend_1)

puts 'Finished!'
