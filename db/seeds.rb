# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Box.destroy_all

puts 'Creating Box...'
boxes_attributes = [
 {
   title: 'Babyrilla',
   description: 'Simple box',
 },
 {
   title: 'Normarilla',
   description: 'Awesome box',
 },
 {
   title: 'Gorilla',
   description: 'Premium box',
 }
]
Box.create!(boxes_attributes)
puts 'Finished'