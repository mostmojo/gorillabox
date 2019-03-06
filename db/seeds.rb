puts 'Cleaning database...'
Box.destroy_all
Challenge.destroy_all
User.destroy_all

puts 'Creating Box...'
boxes_attributes = [
 {
   title: 'Babyrilla',
   description: 'Simple box',
   price_cents: 1500,
   sku: 'Babyrilla',
   contents: 'Kick start your day with a combination of our enriched organic products and wild teas.',
 },
 {
   title: 'Normarilla',
   description: 'Awesome box',
   price_cents: 2000,
   sku: 'Normarilla',
   contents: 'Something more than the common healthy products. A powerful combo of super goodies.',
 },
 {
   title: 'Gorilla',
   description: 'Premium box',
   price_cents: 2500,
   sku: 'Gorilla',
   contents: 'For the active-goers looking to make the extra step with a healthier, organic super box',
 }
]
Box.create!(boxes_attributes[0])
Box.create!(boxes_attributes[1])
Box.create!(boxes_attributes[2])
puts 'Finished'

user_one = User.create(email: "pablito@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY")
user_two = User.create(email: "john@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY")
user_three = User.create(email: "alex@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY")
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
