require "open-uri"
Booking.destroy_all
Animal.destroy_all
User.destroy_all

user_1 = User.create(
  first_name: "Marie",
  last_name: "Hasselberg",
  email: "marie@marie.com",
  address: "Hermannstraße 124, 12051 Berlin, Berlin, Germany",
  password: "123456"
)

user_2 = User.create(
  first_name: "Philip",
  last_name: "Nordmeyer",
  email: "nordy@nordy.com",
  address: "Stephanstraße 24, 10559 Berlin, Berlin, Germany",
  password: "123456"
)

user_3 = User.create(
  first_name: "Otmar",
  last_name: "Jenner",
  email: "otmar@otmar.com",
  address: "Engeldamm 52, 10179 Berlin, Berlin, Germany",
  password: "123456"
)

user_4 = User.create(
  first_name: "Jenny",
  last_name: "Glassmyer",
  email: "jennifer@gmail.com",
  address: "Frankfurter Allee 12, 10247 Berlin, Berlin, Germany",
  password: "123456"
)

user_5 = User.create(
  first_name: "Ron",
  last_name: "Handsome",
  email: "ron@gmail.com",
  address: "Oranienstraße 14, 10999 Berlin, Berlin, Germany",
  password: "123456"
)

user_6 = User.create(
  first_name: "April",
  last_name: "Morlone",
  email: "april@gmail.com",
  address: "Torstraße 123, 10119 Berlin, Berlin, Germany",
  password: "123456"
)

user_7 = User.create(
  first_name: "Suzie",
  last_name: "DiMarzio",
  email: "suzie@gmail.com",
  address: "2 Park Ln, London W1J 7EY, Great Britain",
  password: "123456"
)

user_8 = User.create(
  first_name: "Christine",
  last_name: "McDonald",
  email: "christine@gmail.com",
  address: "Frankfurter Straße 9, 34117 Kasssel, Hessen, Germany",
  password: "123456"
)

user_9 = User.create(
  first_name: "Franz",
  last_name: "Oblast",
  email: "franze@gmail.com",
  address: "Reeperbahn 9, 20359 Hamburg, Hamburg, Germany",
  password: "123456"
)

user_10 = User.create(
  first_name: "Felix",
  last_name: "Magnus",
  email: "felix@gmail.com",
  address: "Bürgergasse 12, 8010 Graz, Austria",
  password: "123456"
)

animal1 = Animal.create(
  name: "Rudi",
  species: "Horse",
  breed: "Trakehner",
  gender: "Male",
  personality: "Empathetic",
  description: "An attentive companion, very smart and entertaining.",
  care_level: "Hard",
  age: 5,
  price_per_day: 150,
  care_instructions: "Needs fresh hey every day and 10 litres of water. No alcohol please, had a former addiction.",
  user_id: user_1.id,
  address: user_1.address
  )

  file = URI.open('https://images.unsplash.com/photo-1622037088021-26eb84ef2389?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')

  animal1.photos.attach(io: file, filename: 'horse.jpg', content_type: 'image/jpg')


animal2 = Animal.create(
  name: "Boris",
  species: "Pig",
  gender: "Male",
  personality: "Funny",
  description: "Friendly guy who rolls with joy and is very clean.",
  care_level: "Medium",
  age: 7,
  price_per_day: 80,
  care_instructions: "Needs 10 kilos of food per day, loves fried vegetables and a lot of hugging. No sweets please.",
  user_id: user_2.id,
  address: user_2.address
)

  file = URI.open('https://images.unsplash.com/photo-1627930738037-9127714a9434?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80
  ')

  animal2.photos.attach(io: file, filename: 'pig.jpg', content_type: 'image/jpg')


animal3 = Animal.create(
  name: "Isabelle",
  species: "Cat",
  breed: "Maine Coon",
  gender: "Female",
  personality: "Cuddly and strong-willed.",
  description: "An elegant lady who gives you a smile and makes your days happy.",
  care_level: "Easy",
  age: 3,
  price_per_day: 80,
  care_instructions: "Feed twice daily and give lots of pets.",
  user_id: user_3.id,
  address: user_3.address
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
  user_id: user_4.id,
  address: user_4.address
  )

  file = URI.open('https://images.unsplash.com/photo-1527153857715-3908f2bae5e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=842&q=80')

  animal4.photos.attach(io: file, filename: 'cow.jpg', content_type: 'image/jpg')


animal5 = Animal.create(
  name: "Maximo",
  species: "Goat",
  breed: "Horneter",
  gender: "Male",
  personality: "Stubborn",
  description: "Very entertaining!",
  care_level: "Easy",
  age: 2,
  price_per_day: 45,
  care_instructions: "Sometimes refuses to eat. Chocolate always helps.",
  user_id: user_5.id,
  address: user_5.address
  )

  file = URI.open('https://images.unsplash.com/photo-1532633378163-24c2c0da3c99?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80')

  animal5.photos.attach(io: file, filename: 'goat.jpg', content_type: 'image/jpg')


animal6 = Animal.create(
  name: "Missy",
  species: "Chicken",
  breed: "Egg Queen",
  gender: "Female",
  personality: "Caring and providing",
  description: "Very quiet",
  care_level: "Easy",
  age: 4,
  price_per_day: 35,
  care_instructions: "If she doesn't like something, she spits it out again. Therefore only rye grains. She likes them.",
  user_id: user_6.id,
  address: user_6.address
  )

  file = URI.open('https://images.unsplash.com/photo-1542038391945-92adb9b34787?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2789&q=80')

  animal6.photos.attach(io: file, filename: 'chicken.jpg', content_type: 'image/jpg')


animal7 = Animal.create(
  name: "Moroon",
  species: "Sheep",
  breed: "Furr Funny",
  gender: "Female",
  personality: "Slow",
  description: "Snores during sleep.",
  care_level: "Easy",
  age: 7,
  price_per_day: 30,
  care_instructions: "Is extremely affectionate. Climbs into bed if you don't keep her off with potato chips.",
  user_id: user_7.id,
  address: user_7.address
  )

  file = URI.open('https://images.unsplash.com/photo-1520644981554-74cd132a97e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal7.photos.attach(io: file, filename: 'sheep.jpg', content_type: 'image/jpg')


animal8 = Animal.create(
  name: "Lady",
  species: "Duck",
  breed: "Grey Breeder",
  gender: "Female",
  personality: "Chaotic",
  description: "Flaps her wings in her sleep because she dreams of flying. But has never learned to fly.",
  care_level: "Easy",
  age: 7,
  price_per_day: 30,
  care_instructions: "Duck food and hershey's kisses.",
  user_id: user_8.id,
  address: user_8.address
  )

  file = URI.open('https://images.unsplash.com/photo-1562543875-13b826ef8e96?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal8.photos.attach(io: file, filename: 'duck.jpg', content_type: 'image/jpg')


animal9 = Animal.create(
  name: "Calendula",
  species: "Goose",
  breed: "Lone Chatterer",
  gender: "Female",
  personality: "Heroic when danger threatens",
  description: "Shrieks when strangers approach. Don't use drugs to calm her.",
  care_level: "Easy",
  age: 7,
  price_per_day: 30,
  care_instructions: "Grains, water and attention feed her well.",
  user_id: user_9.id,
  address: user_9.address
  )

  file = URI.open('https://images.unsplash.com/photo-1562543875-13b826ef8e96?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal9.photos.attach(io: file, filename: 'goose.jpg', content_type: 'image/jpg')


animal10 = Animal.create(
  name: "Hero",
  species: "Dog",
  breed: "Shepherd",
  gender: "Male",
  personality: "Very intuitive. Can read your mind.",
  description: "Does not tolerate quarrels. Always takes sides with the weaker party.",
  care_level: "Easy",
  age: 7,
  price_per_day: 100,
  care_instructions: "Is a real gourmet. Likes lamb with rice and steamed vegetables.",
  user_id: user_10.id,
  address: user_10.address
  )

  file = URI.open('https://images.unsplash.com/photo-1612197183407-b5955c82985e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1554&q=80')

  animal10.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')



animal11 = Animal.create(
  name: "Lacy",
  species: "Horse",
  breed: "Arabian White",
  gender: "Female",
  personality: "Quick-tempered",
  description: "Needs a steady hand and clear guidance.",
  care_level: "Hard",
  age: 5,
  price_per_day: 150,
  care_instructions: "Loves brats, apples and peaches. Sugar is forbidden. Has elevated glucose levels.",
  user_id: user_1.id,
  address: user_1.address
  )

  file = URI.open('https://images.unsplash.com/photo-1553284965-83fd3e82fa5a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80')

  animal11.photos.attach(io: file, filename: 'horse.jpg', content_type: 'image/jpg')


animal12 = Animal.create(
  name: "Bomber",
  species: "Pig",
  gender: "Male",
  personality: "Curious",
  description: "Rolls wherever he can. Wants to be washed afterwards.",
  care_level: "Hard",
  age: 7,
  price_per_day: 50,
  care_instructions: "Eats only potatoes and noodles.",
  user_id: user_1.id,
  address: user_1.address
)

  file = URI.open('https://images.unsplash.com/photo-1541689221361-ad95003448dc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal12.photos.attach(io: file, filename: 'pig.jpg', content_type: 'image/jpg')


animal13 = Animal.create(
  name: "Fluffy",
  species: "Cat",
  breed: "Mixed",
  gender: "Female",
  personality: "Idiosyncratic",
  description: "Goes her own way.",
  care_level: "Easy",
  age: 2,
  price_per_day: 90,
  care_instructions: "If there are a lot of mice for her to hunt she dosn't need any adittional food. She is a very skilled hunter.",
  user_id: user_4.id,
  address: user_4.address
  )

  file = URI.open('https://images.unsplash.com/photo-1511044568932-338cba0ad803?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal13.photos.attach(io: file, filename: 'cat.jpg', content_type: 'image/jpg')


animal14 = Animal.create(
  name: "Jade",
  species: "Cow",
  breed: "Bavarian Stomper",
  gender: "Female",
  personality: "Introverted",
  description: "A great milk cow!",
  care_level: "Medium",
  age: 3,
  price_per_day: 50,
  care_instructions: "Good grass in the garden would do. Drinks only mineral water.",
  user_id: user_3.id,
  address: user_3.address
  )

  file = URI.open('https://images.unsplash.com/photo-1467217322460-5f03dc33a28e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal14.photos.attach(io: file, filename: 'cow.jpg', content_type: 'image/jpg')


animal15 = Animal.create(
  name: "Lizzy",
  species: "Goat",
  breed: "Whitey",
  gender: "Female",
  personality: "Patient",
  description: "Easily satisfied",
  care_level: "Easy",
  age: 1,
  price_per_day: 15,
  care_instructions: "Forgets to drink most of the time. Water must be put in front of her.",
  user_id: user_6.id,
  address: user_6.address
  )

  file = URI.open('https://images.unsplash.com/photo-1524024973431-2ad916746881?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal15.photos.attach(io: file, filename: 'goat.jpg', content_type: 'image/jpg')


animal16 = Animal.create(
  name: "Digger",
  species: "Chicken",
  breed: "Wild Rooster",
  gender: "Male",
  personality: "Loner",
  description: "Hates to be disturbed",
  care_level: "Medium",
  age: 4,
  price_per_day: 20,
  care_instructions: "Eats everything except Snickers. Was traumatised with it at an early age.",
  user_id: user_5.id,
  address: user_5.address
  )

  file = URI.open('https://images.unsplash.com/photo-1472607614475-ea46508fbf20?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal16.photos.attach(io: file, filename: 'chicken.jpg', content_type: 'image/jpg')


animal17 = Animal.create(
  name: "Hariet",
  species: "Sheep",
  breed: "Wool Spender",
  gender: "Female",
  personality: "Egocentric",
  description: "Wants attention all the time",
  care_level: "Medium",
  age: 7,
  price_per_day: 37,
  care_instructions: "Needs a large pasture and friends.",
  user_id: user_8.id,
  address: user_8.address
  )

  file = URI.open('https://images.unsplash.com/photo-1561514905-233607d44a50?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')

  animal17.photos.attach(io: file, filename: 'sheep.jpg', content_type: 'image/jpg')


animal18 = Animal.create(
  name: "Sam",
  species: "Duck",
  breed: "Small Flutterer",
  gender: "Male",
  personality: "Patient",
  description: "Very lazy.",
  care_level: "Easy",
  age: 0.5,
  price_per_day: 5,
  care_instructions: "Needs a lot of sleep and coffee.",
  user_id: user_7.id,
  address: user_7.address
  )

  file = URI.open('https://images.unsplash.com/photo-1513039740139-de0804d85a20?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1724&q=80')

  animal18.photos.attach(io: file, filename: 'duck.jpg', content_type: 'image/jpg')


animal19 = Animal.create(
  name: "George",
  species: "Goose",
  breed: "Stalker",
  gender: "Male",
  personality: "Committed ",
  description: "More attentive than any dog. Defends children at the risk of his own life.",
  care_level: "Medium",
  age: 3,
  price_per_day: 29,
  care_instructions: "Loves lager beer and cheese",
  user_id: user_10.id,
  address: user_10.address
  )

  file = URI.open('https://images.unsplash.com/photo-1564849926098-4a8b1c715872?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80')

  animal19.photos.attach(io: file, filename: 'goose.jpg', content_type: 'image/jpg')


animal20 = Animal.create(
  name: "Spot",
  species: "Dog",
  breed: "Japanese Shepherd",
  gender: "Female",
  personality: "Cuddly and tender",
  description: "Can understand 100 words and wants to join in conversations.",
  care_level: "Easy",
  age: 7,
  price_per_day: 500,
  care_instructions: "Loves rice. Is famous as a vegan.",
  user_id: user_9.id,
  address: user_9.address
  )

  file = URI.open('https://images.unsplash.com/photo-1604632797782-aeea068823f3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80')

  animal20.photos.attach(io: file, filename: 'dog.jpg', content_type: 'image/jpg')


booking1 = Booking.create(
  user_id: user_1.id,
  animal_id: animal1.id,
  date_start: Date.new(2021,8,21),
  date_end: Date.new(2021,8,27)
)

booking2 = Booking.create(
  user_id: user_1.id,
  animal_id: animal2.id,
  date_start: Date.new(2021,8,28),
  date_end: Date.new(2021,8,29)
)

booking3 = Booking.create(
  user_id: user_2.id,
  animal_id: animal3.id,
  date_start: Date.new(2021,8,22),
  date_end: Date.new(2021,9,3)
)

booking4 = Booking.create(
  user_id: user_3.id,
  animal_id: animal4.id,
  date_start: Date.new(2021,8,23),
  date_end: Date.new(2021,9,5)
)

booking5 = Booking.create(
  user_id: user_3.id,
  animal_id: animal5.id,
  date_start: Date.new(2021,9,6),
  date_end: Date.new(2021,9,7)
)

booking6 = Booking.create(
  user_id: user_4.id,
  animal_id: animal6.id,
  date_start: Date.new(2021,9,8),
  date_end: Date.new(2021,9,10)
)

booking7 = Booking.create(
  user_id: user_5.id,
  animal_id: animal7.id,
  date_start: Date.new(2021,8,22),
  date_end: Date.new(2021,9,9)
)

booking8 = Booking.create(
  user_id: user_5.id,
  animal_id: animal8.id,
  date_start: Date.new(2021,9,22),
  date_end: Date.new(2021,9,24)
)

booking9 = Booking.create(
  user_id: user_5.id,
  animal_id: animal9.id,
  date_start: Date.new(2021,9,25),
  date_end: Date.new(2021,9,28)
)

booking10 = Booking.create(
  user_id: user_6.id,
  animal_id: animal10.id,
  date_start: Date.new(2021,9,23),
  date_end: Date.new(2021,9,28)
)

booking11 = Booking.create(
  user_id: user_6.id,
  animal_id: animal11.id,
  date_start: Date.new(2021,9,29),
  date_end: Date.new(2021,10,1)
)

booking12 = Booking.create(
  user_id: user_7.id,
  animal_id: animal12.id,
  date_start: Date.new(2021,9,29),
  date_end: Date.new(2021,10,1)
)

booking13 = Booking.create(
  user_id: user_8.id,
  animal_id: animal13.id,
  date_start: Date.new(2021,8,29),
  date_end: Date.new(2021,10,1)
)

booking14 = Booking.create(
  user_id: user_8.id,
  animal_id: animal14.id,
  date_start: Date.new(2021,8,29),
  date_end: Date.new(2021,10,1)
)

booking15 = Booking.create(
  user_id: user_8.id,
  animal_id: animal15.id,
  date_start: Date.new(2021,8,23),
  date_end: Date.new(2021,9,1)
)

booking16 = Booking.create(
  user_id: user_9.id,
  animal_id: animal16.id,
  date_start: Date.new(2021,8,22),
  date_end: Date.new(2021,9,5)
)

booking17 = Booking.create(
  user_id: user_9.id,
  animal_id: animal18.id,
  date_start: Date.new(2021,9,6),
  date_end: Date.new(2021,9,19)
)

booking18 = Booking.create(
  user_id: user_10.id,
  animal_id: animal19.id,
  date_start: Date.new(2021,8,25),
  date_end: Date.new(2021,9,2)
)

booking19 = Booking.create(
  user_id: user_10.id,
  animal_id: animal20.id,
  date_start: Date.new(2021,8,23),
  date_end: Date.new(2021,9,20)
)
