# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user = User.new ({
  email: "thomas.naude@gmail.com",
  first_name: "Thomas",
  last_name: "Naude",
  description: "J'aime les caravanes !",
  street: "24 rue Brizard",
  city: "Bordeaux",
  zip_code: "33000",
  country: "France",
  gender: "male",
  photo: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAPvAAAAJDQ2OTcxODQ3LTM5OTQtNDk5MS1hMTliLTM2ZGQxN2RhNTY4Nw.jpg",
  password: "azertyui",
  password_confirmation: "azertyui"
})
@user.save

@caravan = Caravan.new ({
  street: "17 place de la bourse",
  city: "Bordeaux",
  zip_code: "33000",
  country: "France",
  capacity: (1..5).to_a.sample,
  price: (25..75).to_a.sample,
  tv: [true, false].sample,
  coffee_machine: [true, false].sample,
  wifi: [true, false].sample,
  shower: [true, false].sample,
  kitchen:[true, false].sample,
  description: "A kickass caravan for discovering the world",
  user_id: 1,
  title: "Le Wagon Caravan",
})
@caravan.save


@caravan = Caravan.new ({
  street: "24 rue Brizard",
  city: "Bordeaux",
  zip_code: "33000",
  country: "France",
  capacity: (1..5).to_a.sample,
  price: (25..75).to_a.sample,
  tv: [true, false].sample,
  coffee_machine: [true, false].sample,
  wifi: [true, false].sample,
  shower: [true, false].sample,
  kitchen:[true, false].sample,
  description: "Be ready for an experience that will change your life",
  user_id: 1,
  title: "Tom's badass caravan",
})
@caravan.save

@caravan = Caravan.new ({
  street: "4 place Gambetta",
  city: "Bordeaux",
  zip_code: "33000",
  country: "France",
  capacity: (1..5).to_a.sample,
  price: (25..75).to_a.sample,
  tv: [true, false].sample,
  coffee_machine: [true, false].sample,
  wifi: [true, false].sample,
  shower: [true, false].sample,
  kitchen:[true, false].sample,
  description: "The caravan you need when love is in the air",
  user_id: 1,
  title: "Romantic caravan",
})
@caravan.save

@caravan = Caravan.new ({
  street: "15 place de la Victoire",
  city: "Bordeaux",
  zip_code: "33000",
  country: "France",
  capacity: (1..5).to_a.sample,
  price: (25..75).to_a.sample,
  tv: [true, false].sample,
  coffee_machine: [true, false].sample,
  wifi: [true, false].sample,
  shower: [true, false].sample,
  kitchen:[true, false].sample,
  description: "Wanna cross the desert? This is the caravan you need",
  user_id: 1,
  title: "Desert ready caravan",
})
@caravan.save
