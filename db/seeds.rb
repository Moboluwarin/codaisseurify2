# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
Song.destroy_all
artist1 = Artist.create!(email:"tolu@yahoo.com", name:"Fela", image_url:"http://res.cloudinary.com/codaisseurify2/image/upload/v1499621504/download_vhl1ni.jpg", password:"1234abcd")
artist2 = Artist.create!(email:"jimmy@yahoo.com", name:"Davido", image_url:"http://res.cloudinary.com/codaisseurify2/image/upload/v1499621487/Davido_eprnia.jpg", password:"1234abcd")
artist3 = Artist.create!(email:"kim@yahoo.com", name:"Michael", image_url:"http://res.cloudinary.com/codaisseurify2/image/upload/v1499621492/Michael-Jackson_vhiijm.jpg", password:"1234abcd")

song1 = Song.create!(title: "Heal the world", song_url: "https://www.youtube.com", artist: artist1)
song2 = Song.create!(title: "Heal the world", song_url: "https://www.youtube.com", artist: artist2)
song3 = Song.create!(title: "Heal the world", song_url: "https://www.youtube.com", artist:artist3)
song4 = Song.create!(title: "Heal the world", song_url: "https://www.youtube.com", artist:artist1)
