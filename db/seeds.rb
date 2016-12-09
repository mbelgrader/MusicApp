# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Band.create!(name: 'Rihanna')
Band.create!(name: 'Metallica')
Band.create!(name: 'Van Halen')

Album.create!(name: 'Rated R', band_id: 1, year: 2009, live: false)
Album.create!(name: 'Ride the Lightning', band_id: 2, year: 1984, live: false)

Track.create!(name: 'Mad House', album_id: 1)
Track.create!(name: 'Fade to Black', album_id: 2)
