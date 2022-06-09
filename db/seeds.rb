# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Reservation.destroy_all
Friend.destroy_all
User.destroy_all

user1 = User.create!(email: 'lina@gmail.com', password: 'lololo', password_confirmation: 'lololo')
file1 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/v1654591985/oi5jpyxnwf2oitdzxxyt.jpg")
user1.photo.attach(io: file1, filename: 'pdp1', content_type: 'image/jpg')

user2 = User.create!(email: 'paul@gmail.com', password: 'lululu', password_confirmation: 'lululu')
file2 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/v1654594514/sjyfqmkaci9g5te48lsm.jpg")
user2.photo.attach(io: file2, filename: 'pdp2', content_type: 'image/jpg')

user3 = User.create!(email: 'john@gmail.com', password: 'lalala', password_confirmation: 'lalala')
file3 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/v1654595100/akbogbpj8ie8u3qtvuik.jpg")
user3.photo.attach(io: file3, filename: 'pdp3', content_type: 'image/jpg')

user4 = User.create!(email: 'lea@gmail.com', password: 'lilili', password_confirmation: 'lilili')
file4 = URI.open("https://res.cloudinary.com/du6ejgggh/image/upload/v1654595406/cba3ulehgxdzjc2lzfh4.jpg")
user4.photo.attach(io: file4, filename: 'pdp4', content_type: 'image/jpg')

photofriend1 = URI.open("https://res.cloudinary.com/dst18yn8s/image/upload/v1654766815/hnlx70l7rau51f4agd0x.jpg")
photofriend2 = URI.open("https://res.cloudinary.com/dst18yn8s/image/upload/v1654766997/nrbx9lhwf9negpyl8kh4.jpg")
photofriend3 = URI.open("https://res.cloudinary.com/dst18yn8s/image/upload/v1654767004/dge3nnh16ex1ihvmiota.jpg")
photofriend4 = URI.open("https://res.cloudinary.com/dst18yn8s/image/upload/v1654767017/jv6k6ptwwz1pta7htcb8.jpg")
photofriend5 = URI.open("https://res.cloudinary.com/dst18yn8s/image/upload/v1654767023/c3p9mid8629zpkgu1ztv.jpg")
photofriend6 = URI.open("https://res.cloudinary.com/dst18yn8s/image/upload/v1654767032/t59ymzvhwx3mphgtrqrd.jpg")

friend1 = Friend.create!(first_name: 'Nathan', last_name: 'Dubois', age: '24', personnality: 'Calme', hobby: 'sport, cuisine', availability: 'July 14th', localisation: '21 rue haxo, Marseille', event_category: 'Bowling',  user: user1)
friend1.photo.attach(io: photofriend1, filename: 'nathan.jpg', content_type: 'image/jpg')

friend2 = Friend.create!(first_name: 'Paul', last_name: 'Dumont', age: '24', personnality: 'Extraverti', hobby: 'soirée, voyage', availability: 'Today', localisation: 'Lyon', event_category: 'Repas de famille',  user: user1)
friend2.photo.attach(io: photofriend2, filename: 'paul.jpeg', content_type: 'image/jpeg')

friend3 = Friend.create!(first_name: 'Lina', last_name: 'El amrani', age: '24', personnality: 'Reservée', hobby: 'cuisine, jardinage', availability: 'June 3rd', localisation: 'Paris', event_category: 'Randonnée',  user: user2)
friend3.photo.attach(io: photofriend3, filename: 'lina.jpeg', content_type: 'image/jpeg')

friend4 = Friend.create!(first_name: 'Valéria', last_name: 'Pineda', age: '24', personnality: 'Extravertie', hobby: 'cinéma, musique', availability: 'Now', localisation: 'Bordeaux', event_category: 'Cinéma',  user: user2)
friend4.photo.attach(io: photofriend4, filename: 'valeria.jpeg', content_type: 'image/jpeg')

friend5 = Friend.create!(first_name: 'Léa', last_name: 'Barus', age: '24', personnality: 'Reservée', hobby: 'art, randonnée', availability: 'August', localisation: 'Toulouse', event_category: 'Sortie entre amis',  user: user3)
friend5.photo.attach(io: photofriend5, filename: 'lea.jpeg', content_type: 'image/jpeg')

friend6 = Friend.create!(first_name: 'John', last_name: 'Unnom', age: '24', personnality: 'Extraverti', hobby: 'tennis, art', availability: 'July 1st', localisation: 'Marseille', event_category: 'Soirée',  user: user4)
friend6.photo.attach(io: photofriend6, filename: 'logan-friend.jpg', content_type: 'image/jpg')

Reservation.create!(date: 'July 14th 2022', location: 'Marseille', user: user1, friend: friend1)

puts 'Finished!'
