# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Reservation.destroy_all
Friend.destroy_all
User.destroy_all

user_1 = User.create!(email: 'user_1@gmail.com', password:'lololo', password_confirmation:'lololo')
file_1 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654591985/oi5jpyxnwf2oitdzxxyt.jpg")
user_1.photo.attach(io: file_1, filename: 'pdp1', content_type: 'image/jpg')

user_2 =User.create!(email: 'user_2@gmail.com', password:'lululu', password_confirmation:'lululu')
file_2 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654594514/sjyfqmkaci9g5te48lsm.jpg")
user_2.photo.attach(io: file_2, filename: 'pdp2', content_type: 'image/jpg')


user_3 =User.create!(email: 'user_3@gmail.com', password:'lalala', password_confirmation:'lalala')
file_3 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654595100/akbogbpj8ie8u3qtvuik.jpg")
user_3.photo.attach(io: file_3, filename: 'pdp3', content_type: 'image/jpg')


user_4 =User.create!(email: 'user_4@gmail.com', password:'lilili', password_confirmation:'lilili')
file_4 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1654595406/cba3ulehgxdzjc2lzfh4.jpg")
user_4.photo.attach(io: file_4, filename: 'pdp4', content_type: 'image/jpg')


friend_1 = Friend.create!(first_name: 'Toto', last_name: 'Dubois', age: '24', personnality: 'cool', hobby: 'sport, cuisine', availability: '14/07/2022', localisation: 'Marseille', event_category: 'Bowling',  user: user_1)
friend_2 = Friend.create!(first_name: 'Titi', last_name: 'Dumont', age: '24', personnality: 'extraverti', hobby: 'soirée, voyage', availability: '14/07/2022', localisation: 'Lyon', event_category: 'Bowling',  user: user_1)
friend_3 = Friend.create!(first_name: 'Tata', last_name: 'El amrani', age: '24', personnality: 'reservé', hobby: 'cuisine, jardinage', availability: '14/07/2022', localisation: 'Marseille', event_category: 'Randonnée',  user: user_2)
friend_4 = Friend.create!(first_name: 'Tutu', last_name: 'Pineda', age: '24', personnality: 'cool', hobby: 'sport, voyage', availability: '13/07/2022', localisation: 'Lyon', event_category: 'Cinemas',  user: user_2)
friend_5 = Friend.create!(first_name: 'Tete', last_name: 'Barus', age: '24', personnality: 'reservé', hobby: 'soirée, jardinage', availability: '13/07/2022', localisation: 'Marseille', event_category: 'Cinemas',  user: user_3)
friend_6 = Friend.create!(first_name: 'Tyty', last_name: 'Unnom', age: '24', personnality: 'extraverti', hobby: 'Cinemas, cuisine', availability: '13/07/2022', localisation: 'Marseille', event_category: 'Randonnée',  user: user_4)

reservation = Reservation.create!(date: 'user_2@gmail.com', location:'Marseille', user: user_1, friend: friend_1)

puts 'Finished!'
