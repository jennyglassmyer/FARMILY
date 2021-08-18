require "open-uri"
Animal.destroy_all
User.destroy_all

user_1 = User.create(
  first_name: "Marie",
  last_name: "Hasselberg",
  email: "marie@marie.com",
  street: "Mitte",
  house_number: 12,
  city: "Berlin",
  post_code: 10000,
  password: "123456"
)

user_2 = User.create(
  first_name: "Philip",
  last_name: "Nordy",
  email: "nordy@nordy.com",
  street: "Moabit",
  house_number: 24,
  city: "Berlin",
  post_code: 10000,
  password: "123456"
)

user_3 = User.create(
  first_name: "Otmar",
  last_name: "Jenner",
  email: "otmar@otmar.com",
  street: "Mitte",
  house_number: 56,
  city: "Berlin",
  post_code: 10000,
  password: "123456"
)

user_4 = User.create(
  first_name: "Jenny",
  last_name: "Glassmyer",
  email: "jennifer@gmail.com",
  street: "Mitte",
  house_number: 12,
  city: "Berlin",
  post_code: 10000,
  password: "123456"
)

animal1 = Animal.create(
  name: "Rudi",
  species: "Horse",
  breed: "Trakehner",
  gender: "Male",
  personality: "Empathetic",
  description: "An attentive companion, very smart and entertaining",
  care_level: "Hard",
  age: 5,
  price_per_day: 150,
  care_instructions: "Need fresh hey every day, 10 litres of water, no alcohol, please, had a former addiction.",
  user_id: user_1.id
  )

  file = URI.open('https://images.unsplash.com/photo-1622037088021-26eb84ef2389?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')

  animal1.photos.attach(io: file, filename: 'horse.jpg', content_type: 'image/jpg')


  animal2 = Animal.create(
    name: "Boris",
    species: "Pig",
    gender: "Male",
    personality: "Funny",
    description: "A mate who rolls with joy and is very clean.",
    care_level: "Medium",
    age: 7,
    price_per_day: 80,
    care_instructions: "Needs 10 Kilos of food per day, loves fried vegetables and a lot of hugging. No sweets please.",
    user_id: user_1.id
  )

  file = URI.open('https://images.unsplash.com/photo-1627930738037-9127714a9434?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80
')

  animal2.photos.attach(io: file, filename: 'pig.jpg', content_type: 'image/jpg')


  animal3 = Animal.create(
  name: "Isabelle",
  species: "Cat",
  breed: "Maine Coon",
  gender: "Female",
  personality: "Cuddly and strong-willed",
  description: "An elegant lady who gives you a smile and makes your days happy.",
  care_level: "Easy",
  age: 3,
  price_per_day: 80,
  care_instructions: "Feed twice daily and lots of pets.",
  user_id: user_3.id
  )

  file = URI.open('https://images.unsplash.com/photo-1501820488136-72669149e0d4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')

  animal3.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')


  animal4 = Animal.create(
  name: "Ella",
  species: "Cow",
  breed: "Jersey",
  gender: "Female",
  personality: "Kind and wise",
  description: "A great milk cow!",
  care_level: "Easy",
  age: 3,
  price_per_day: 50,
  care_instructions: "Needs a large pasture and plenty of grass.",
  user_id: user_4.id
  )

  file = URI.open('https://images.unsplash.com/photo-1500595046743-cd271d694d30?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1353&q=80')

  animal4.photos.attach(io: file, filename: 'cow.jpg', content_type: 'image/jpg')
