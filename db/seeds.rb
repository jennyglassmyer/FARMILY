user_1 = User.create!(
  first_name: "Marie",
  last_name: "Hasselberg",
  email: "marie@marie.com",
  street: "Mitte",
  house_number: 12,
  city: "Berlin",
  post_code: 10000,
  password: "123456"
)

user_2 = User.create!(
  first_name: "Philip",
  last_name: "Nordy",
  email: "nordy@nordy.com",
  street: "Moabit",
  house_number: 24,
  city: "Berlin",
  post_code: 10000,
  password: "123456"
)

user_3 = User.create!(
  first_name: "Otmar",
  last_name: "Jenner",
  email: "otmar@otmar.com",
  street: "Mitte",
  house_number: 56,
  city: "Berlin",
  post_code: 10000,
  password: "123456"
)

user_4 = User.create!(
  first_name: "Jenny",
  last_name: "Glassmyer",
  email: "jennifer@gmail.com",
  street: "Mitte",
  house_number: 12,
  city: "Berlin",
  post_code: 10000,
  password: "123456"
)

animal1 = Animal.create!(
  name: "Rudi", 
  species: "Horse", 
  breed: "Trakehner", 
  gender: "Male", 
  personality: "Empathetic",
  description: "An attentive companion, very smart and entertaining", 
  care_level: 9,
  age: 5,
  price_per_day: 150,
  care_instructions: "Need fresh hey every day, 10 litres of water, no alcohol, please, had a former addiction.",
  user: user_1
  )

  animal2 = Animal.create!(
  name: "Boris", 
  species: "Pig", 
  gender: "Male", 
  personality: "Funny",
  description: "A mate who rolls with joy and is very clean.",
  care_level: 5,
  age: 7,
  price_per_day: 80,
  care_instructions: "Needs 10 Kilos of food per day, loves fried vegetables and a lot of hugging. No sweets please.",
  user: user_2
  )

  animal3 = Animal.create!(
  name: "Isabelle", 
  species: "Cat", 
  breed: "Maine Coon",
  gender: "Female", 
  personality: "Cuddly and strong-willed",
  description: "An elegant lady who gives you a smile and makes your days happy.",
  care_level: 3,
  age: 3,
  price_per_day: 80,
  care_instructions: "Feed twice daily and lots of pets.",
  user: user_3
  )

  animal4 = Animal.create!(
  name: "Ella", 
  species: "Cow", 
  breed: "Jersey",
  gender: "Female", 
  personality: "Kind and wise",
  description: "A great milk cow!",
  care_level: 3,
  age: 3,
  price_per_day: 50,
  care_instructions: "Needs a large pasture and plenty of grass.",
  user: user_4
  )

  
