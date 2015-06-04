# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.delete_all
Song.delete_all
Album.delete_all

g1 = Genre.create(name: "Punk")
g2 = Genre.create(name: "Indie")
g3 = Genre.create(name: "Rock")
g4 = Genre.create(name: "Pop")

s1 = Song.create(name: " 99 red baloons", artist: "beyonce")
s2 = Song.create(name: " if i was boy", artist: "daisy")
s3 = Song.create(name: " single ladies ", artist: "anna")
s4 = Song.create(name: " baby love", artist: "chris")



a1 = g1.albums.create(name:'hallo', price: 23)
a2 = g2.albums.create(name: 'friends',price:89)
a3 = g3.albums.create(name: 'missing',price:89)
a4 = g4.albums.create(name: 'adsfas',price:24)

a1.album_songs.create(song_id: s1.id)
a1.album_songs.create(song_id: s2.id)
a2.album_songs.create(song_id: s3.id)
a2.album_songs.create(song_id: s3.id)
a2.album_songs.create(song_id: s3.id)
