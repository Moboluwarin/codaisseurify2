# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
Song.destroy_all
artist1 = Artist.create!(email:"tolu@yahoo.com", name:"mary", image_url:"http://res.cloudinary.com/codaisseurify2/image/upload/v1499544561/sample.jpg", password:"1234abcd")
artist2 = Artist.create!(email:"jimmy@yahoo.com", name:"Jimmy", image_url:"http://res.cloudinary.com/codaisseurify2/image/upload/v1499544561/sample.jpg", password:"1234abcd")
artist3 = Artist.create!(email:"kim@yahoo.com", name:"Kim", image_url:"http://res.cloudinary.com/codaisseurify2/image/upload/v1499544561/sample.jpg", password:"1234abcd")
artist4 = Artist.create!(email:"lima@yahoo.com", name:"Lima", image_url:"http://res.cloudinary.com/codaisseurify2/image/upload/v1499544561/sample.jpg", password:"1234abcd")
song1 = Song.create!(title: "Heal the world", song_url: "https://www.youtube.com", artist: artist1)
song2 = Song.create!(title: "Heal the world", song_url: "https://www.youtube.com", artist: artist2)
song3 = song1 = Song.create!(title: "Heal the world", song_url: "https://www.youtube.com", artist:artist3)
