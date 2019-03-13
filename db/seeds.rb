puts 'Cleaning Database...'
Box.destroy_all
Challenge.destroy_all
User.destroy_all
puts 'Database Cleaned!'



puts 'Creating Users...'
user_one = User.create(first_name: "Pablo", email: "pablito@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY", profile_picture: "https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(34).jpg")
user_two = User.create(first_name: "John", email: "john@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY", profile_picture: "https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(18).jpg")
user_three = User.create(first_name: "Alex", email: "alex@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY", profile_picture: "https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(35).jpg")
user_four = User.create(first_name: "Mike", email: "mike@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY", profile_picture: "https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg")
user_five = User.create(first_name: "Jack", email: "jack@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY", profile_picture: "https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(47).jpg")
user_six = User.create(first_name: "Phelim", email: "phelim@gmail.com", password: "123456", address: "Unit 13, 138 Kingsland Rd, London E2 8DY", profile_picture: "https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(48).jpg")

puts 'Users Created!'

puts 'Creating Boxes...'
boxes_attributes = [
 box_one = {
   title: 'Babyrilla',

   description: 'Kick start your day with a combination of our enriched organic products and wild teas. Simple box This pack is a great way to start experiencing a variety of snacks.',
   contents: "5-7 products. This parcel will have been curated just for you and will contain a selection of snacks!",
   price_cents: 1500,
   sku: 'Babyrilla',
   main_image: "https://res.cloudinary.com/mostmojo/image/upload/v1552312234/box-a.jpg",
   image1: "https://phillyfitfoodies.files.wordpress.com/2018/07/barz.jpg",
   image2: "http://9k42jquqs.preview.infomaniak.website/wp-content/uploads/2018/04/ape-snacks-10.jpeg",
   image3: "https://d2azl42aua8mom.cloudfront.net/wp-content/uploads/2018/06/25172652/HealthWarrior_Full-Width_A.jpg",
   image4: "https://cdn.shopify.com/s/files/1/1368/4721/products/sb-cacao-peanut_ROCD4KERZXGX.png?v=1544381787",
 },
 box_two = {
   title: 'Normarilla',
   description: 'The more casual snacker can squeeze up to 2 weeks of snacks out of this pack, those with an active on-the-go lifestyle a little less. This pack is a great way to start experiencing a variety of snacks.',
   contents: "10 to 12 products. This parcel will have been curated just for you and will contain a selection of snacks!",
   price_cents: 2000,
   sku: 'Normarilla',
   main_image: "https://res.cloudinary.com/mostmojo/image/upload/v1552312234/box-b.jpg",
   image1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7XKpExS0MITsaGgFF4CE_8ubQWME-8JQ0Fn9VaZOV8eJQOQ3G",
   image2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzojePK53JMzobYuG4vB7ymfFhicKI-mYCoh4K58GvgispIl4v",
   image3: "https://s1.thcdn.com/widgets/127-us/42/480image-124742.jpg",
   image4: "https://s3.amazonaws.com/cratejoy-marketplace-images/5e93369b7bdb4a3782f980ac268d27e3_600_70.jpeg",
 },
 box_three ={
   title: 'Gorilla',
   description: "Premium box designed for those who like to snack BIG or with demanding lifestyles which mean they are always on-the-go and can't be without a convenient source of good nutrients.",
   contents: "18 to 20 products. This parcel will have been curated just for you and will contain a selection of snacks!",
   price_cents: 2500,
   sku: 'Gorilla',
   main_image: "https://res.cloudinary.com/mostmojo/image/upload/v1552312234/box-c.jpg",
   image1: "https://s3.amazonaws.com/cratejoy-marketplace-images/ecb0d45f8e794dfd840e992402e2bbec_600_70.jpeg",
   image2: "https://s3.amazonaws.com/cratejoy-marketplace-images/bedf29b5d34b43ec853ebf8b1ce25f97_600_79.jpeg",
   image3: "https://s3.amazonaws.com/cratejoy-marketplace-images/814024b20e114530bce79521fadd5cda_600_70.jpeg",
   image4: "https://s3.amazonaws.com/cratejoy-marketplace-images/0a2096ac83f64a0d8d4655e9f6913c8e_600_70.jpeg",
 },
]
Box.create!(boxes_attributes[0])
Box.create!(boxes_attributes[1])
Box.create!(boxes_attributes[2])
puts 'Boxes Created!'
puts 'Creating Reviews...'
reviews_attributes = [
  { description: "I had an amazing experience with gorillabox. The protein was very tasty, the herbal teas were great for an evening chill-out. Most of all, the monthly challenges motivated me!",
    stars: 5,
    user: user_one,
  },
    { description: "Gorillabox really got me running monthly and taking care of my body, I really enjoyed the normarilla box as it provided such a vast variety of goodies.",
    stars: 5,
    user: user_three,
  },
    { description: "I am feeling so much better after using the gorilla box. My muscle mass has improved and I love the 2KM challenge! I'm going to do it by the end of the month I promise.",
    stars: 4,
    user: user_two,
  },
    { description: "Gorillabox really got me running monthly and taking care of my body, I really enjoyed the normarilla box as it provided such a vast variety of goodies.",
    stars: 5,
    user: user_four,
  },
    { description: "I am feeling so much better after using the gorilla box. My muscle mass has improved and I love the 2KM challenge! I'm going to do it by the end of the month I promise.",
    stars: 3,
    user: user_five,
  },
    { description: "I had an amazing experience with gorillabox. The protein was very tasty, the herbal teas were great for an evening chill-out. The monthly challenges motivated me!",
    stars: 5,
    user: user_six,
  },
    { description: "I had an amazing experience with gorillabox. The protein was very tasty, the herbal teas were great for an evening chill-out. Most of all, the monthly challenges motivated me!",
    stars: 5,
    user: user_three,
  },
    { description: "Gorillabox really got me running monthly and taking care of my body, I really enjoyed the normarilla box as it provided such a vast variety of goodies.",
    stars: 5,
    user: user_six,
  },
    { description: "I am feeling so much better after using the gorilla box. My muscle mass has improved and I love the 2KM challenge! I'm going to do it by the end of the month I promise.",
    stars: 4,
    user: user_two,
  },
    { description: "Gorillabox really got me running monthly and taking care of my body, I really enjoyed the normarilla box as it provided such a vast variety of goodies.",
    stars: 5,
    user: user_one,
  },

]
Review.create!(reviews_attributes)
puts 'Reviews Created!'


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
puts 'Chanllenges Created!!'

puts '->'
puts '->'
puts '-> SEED FILE CREATED'

