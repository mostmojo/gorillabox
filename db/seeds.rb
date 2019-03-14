puts 'Cleaning Database...'
Review.destroy_all
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
 {
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
 {
   title: 'Normarilla',
   description: 'The more casual snacker can squeeze up to 2 weeks of snacks out of this pack, those with an active on-the-go lifestyle a little less. This pack is a great way to start experiencing a variety of snacks.',
   contents: "10 to 12 products. This parcel will have been curated just for you and will contain a selection of snacks!",
   price_cents: 2000,
   sku: 'Normarilla',
   main_image: "https://res.cloudinary.com/mostmojo/image/upload/v1552312234/box-b.jpg",
   image1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7XKpExS0MITsaGgFF4CE_8ubQWME-8JQ0Fn9VaZOV8eJQOQ3G",
   image2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzojePK53JMzobYuG4vB7ymfFhicKI-mYCoh4K58GvgispIl4v",
   image3: "data:image/jpeg;base64,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",
   image4: "https://s3.amazonaws.com/cratejoy-marketplace-images/5e93369b7bdb4a3782f980ac268d27e3_600_70.jpeg",
 },
 {
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
    user: User.all.sample,
    box: Box.all.sample,
  },
    { description: "Gorillabox really got me running monthly and taking care of my body, I really enjoyed the normarilla box as it provided such a vast variety of goodies.",
    stars: 5,
    user: User.all.sample,
    box: Box.all.sample,
  },
    { description: "I am feeling so much better after using the gorilla box. My muscle mass has improved and I love the 2KM challenge! I'm going to do it by the end of the month I promise.",
    stars: 4,
    user: User.all.sample,
    box: Box.all.sample,
  },
    { description: "Gorillabox really got me running monthly and taking care of my body, I really enjoyed the normarilla box as it provided such a vast variety of goodies.",
    stars: 5,
    user: User.all.sample,
    box: Box.all.sample,
  },
    { description: "I am feeling so much better after using the gorilla box. My muscle mass has improved and I love the 2KM challenge! I'm going to do it by the end of the month I promise.",
    stars: 3,
    user: User.all.sample,
    box: Box.all.sample,
  },
    { description: "I had an amazing experience with gorillabox. The protein was very tasty, the herbal teas were great for an evening chill-out. The monthly challenges motivated me!",
    stars: 5,
    user: User.all.sample,
    box: Box.all.sample,
  },
    { description: "I had an amazing experience with gorillabox. The protein was very tasty, the herbal teas were great for an evening chill-out. Most of all, the monthly challenges motivated me!",
    stars: 5,
    user: User.all.sample,
    box: Box.all.sample,
  },
    { description: "Gorillabox really got me running monthly and taking care of my body, I really enjoyed the normarilla box as it provided such a vast variety of goodies.",
    stars: 5,
    user: User.all.sample,
    box: Box.all.sample,
  },
    { description: "I am feeling so much better after using the gorilla box. My muscle mass has improved and I love the 2KM challenge! I'm going to do it by the end of the month I promise.",
    stars: 4,
    user: User.all.sample,
    box: Box.all.sample,
  },
      { description: "What a great experience. I would highly recommend it! You won't miss out on the healthy stuff",
    stars: 4,
    user: User.all.sample,
    box: Box.all.sample,
  },
      { description: "I am feeling so much better after using the gorilla box. My muscle mass has improved and I love the 2KM challenge! I'm going to do it by the end of the month I promise.",
    stars: 4,
    user: User.all.sample,
    box: Box.all.sample,
  },
      { description: "I am feeling so much better after using the gorilla box. My muscle mass has improved and I love the 2KM challenge! I'm going to do it by the end of the month I promise.",
    stars: 4,
    user: User.all.sample,
    box: Box.all.sample,
  },
      { description: "What a great experience. I would highly recommend it! You won't miss out on the healthy stuff",
    stars: 4,
    user: User.all.sample,
    box: Box.all.sample,
  },
      { description: "This is a must have item on a monthly basis. I feel so much better with myself. Keep it 'r'illa",
    stars: 4,
    user: User.all.sample,
    box: Box.all.sample,
  },
      { description: "This is a must have item on a monthly basis. I feel so much better with myself. Keep it 'r'illa",
    stars: 4,
    user: User.all.sample,
    box: Box.all.sample,
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
