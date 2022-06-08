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

user_1 = User.create!(email: 'lina@gmail.com', password:'lololo', password_confirmation:'lololo')
file_1 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/v1654591985/oi5jpyxnwf2oitdzxxyt.jpg")
user_1.photo.attach(io: file_1, filename: 'pdp1', content_type: 'image/jpg')

user_2 =User.create!(email: 'paul@gmail.com', password:'lululu', password_confirmation:'lululu')
file_2 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/v1654594514/sjyfqmkaci9g5te48lsm.jpg")
user_2.photo.attach(io: file_2, filename: 'pdp2', content_type: 'image/jpg')

user_3 =User.create!(email: 'john@gmail.com', password:'lalala', password_confirmation:'lalala')
file_3 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/v1654595100/akbogbpj8ie8u3qtvuik.jpg")
user_3.photo.attach(io: file_3, filename: 'pdp3', content_type: 'image/jpg')

user_4 =User.create!(email: 'lea@gmail.com', password:'lilili', password_confirmation:'lilili')
file_4 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/v1654595406/cba3ulehgxdzjc2lzfh4.jpg")
user_4.photo.attach(io: file_4, filename: 'pdp4', content_type: 'image/jpg')

friend_1 = Friend.create!(first_name: 'Nathan', last_name: 'Dubois', age: '24', personnality: 'Calme', hobby: 'sport, cuisine', availability: '14/07/2022', localisation: '21 rue haxo, Marseille', event_category: 'Bowling',  user: user_1)
friend_2 = Friend.create!(first_name: 'Paul', last_name: 'Dumont', age: '24', personnality: 'Extraverti', hobby: 'soirée, voyage', availability: '14/07/2022', localisation: 'Lyon', event_category: 'Repas de famille',  user: user_1)
friend_3 = Friend.create!(first_name: 'Lina', last_name: 'El amrani', age: '24', personnality: 'Reservée', hobby: 'cuisine, jardinage', availability: '14/07/2022', localisation: 'Paris', event_category: 'Randonnée',  user: user_2)
friend_4 = Friend.create!(first_name: 'Valéria', last_name: 'Pineda', age: '24', personnality: 'Extravertie', hobby: 'cinéma, musique', availability: '13/07/2022', localisation: 'Bordeaux', event_category: 'Cinéma',  user: user_2)
friend_5 = Friend.create!(first_name: 'Léa', last_name: 'Barus', age: '24', personnality: 'Reservée', hobby: 'art, randonnée', availability: '13/07/2022', localisation: 'Toulouse', event_category: 'Sortie entre amis',  user: user_3)
friend_6 = Friend.create!(first_name: 'John', last_name: 'Unnom', age: '24', personnality: 'Extraverti', hobby: 'tennis, art', availability: '13/07/2022', localisation: 'Marseille', event_category: 'Soirée',  user: user_4)

reservation = Reservation.create!(date: 'user_2@gmail.com', location: 'Marseille', user: user_1, friend: friend_1)

puts 'Finished!'
