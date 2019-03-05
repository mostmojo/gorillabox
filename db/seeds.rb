puts 'Cleaning database...'
Box.destroy_all
Challenge.destroy_all
User.destroy_all

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
Box.create!(boxes_attributes[0])
Box.create!(boxes_attributes[1])
Box.create!(boxes_attributes[2])
puts 'Finished'

user_one = User.create(email: "pablito@gmail.com", password: "123456")
user_two = User.create(email: "john@gmail.com", password: "123456")
user_three = User.create(email: "alex@gmail.com", password: "123456")
puts 'Creating Challenges...'
challenges_attributes = [
 {
   title: 'Pushups',
   details: '30 x 4',
   completed: false,
   user: user_one,
 },
 {
   title: 'Situps',
   details: '20 x 4',
   completed: false,
   user: user_two,
 },
 {
   title: 'Jumping Jacks',
   details: '20 x 4',
   completed: false,
   user: user_three,
 }
]
Challenge.create!(challenges_attributes[0])
Challenge.create!(challenges_attributes[1])
Challenge.create!(challenges_attributes[2])
