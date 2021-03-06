# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
Song.destroy_all
Artist.destroy_all

guiliani_f = Photo.create(remote_image_url: "http://res.cloudinary.com/olijve/image/upload/v1489867475/Artists/guiliani.jpg")
rachmaninov_f = Photo.create(remote_image_url: "http://res.cloudinary.com/olijve/image/upload/c_scale,h_197,w_152/v1489867462/Artists/Pianista.jpg")

#puts "#{@photos.lenght} fotos created"

rodrigo = Artist.create!(name: "Joaquin Rodrigo", country: "Spain", alive: false, type_of_music:"guitar music", photo: rachmaninov_f)
guiliani = Artist.create!(name:"Mauro Guiliani", country: "Argentina", alive: false, type_of_music: "guitar music", photo: guiliani_f)

#puts "#{@artists.lenght} artists created"

song1 = Song.create!(title:"Concierto de Aranjuez", language:"orchestral",lenght_in_min: 36, artist: rodrigo)
song2 = Song.create!(title:"Concierto picarto",language: "orchestral", lenght_in_min: 42, artist: rodrigo)
song3 = Song.create!(title:"Concierto for guitar and string orchestra", language: "orchestral", lenght_in_min: 33, artist: guiliani)

#puts "#{@songs.lenght} songs created"
