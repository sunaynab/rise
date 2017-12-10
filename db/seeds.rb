# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!({
  username: "jtnshieh",
  password: "yas queen",
  email: "jtnshieh@gmail.com",
  first_name: "Justin",
  last_name: "Shieh",
  gender: "male",
  grade: 10
})
  
user2 = User.create!({
  username: "sbhikha",
  password: "123456",
  email: "sbhikha@gmail.com",
  first_name: "Sunayna",
  last_name: "Bhikha",
  gender: "female",
  grade: 12
})

incident1 = Incident.create!({ 
  category: "physical assault",
  incident_description: "it was v v terrible",
  location: "app academy",
  time_of_incident: DateTime.new(2002, 6, 1),
  offender: "Justin Shieh",
  victim: "Sunayna Bhikha",
  offender_description: "tall Asian dude",
  victim_description: "fragile Indian woman",
  confidential: false,
  status: "resolved",
  evidence: "https://res.cloudinary.com/daesquwob/image/upload/v1506098509/aldain-austria-316143_u066a2.jpg",
  user_id: user1.id
})

incident2 = Incident.create!({ 
  category: "verbal assault",
  incident_description: "it was bad",
  location: "san francisco",
  time_of_incident: DateTime.new(2001, 2, 3),
  offender: "Sunayna Bhikha",
  victim: "Michael Wei",
  offender_description: "sexy",
  victim_description: "hot",
  confidential: true,
  status: "pending",
  evidence: "https://res.cloudinary.com/daesquwob/image/upload/v1509475720/shttefan-280131_yvtml2.jpg",
  user_id: user2.id
})





