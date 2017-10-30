# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user = User.create([
  { name: 'Janice', email:'janice@email.com', location: 'Jersey City, NJ' },
  { name: 'Harry', email:'harry@email.com', location: 'Austin, TX' },
  { name: 'Rhys', email:'rhys@email.com', location: 'Los Angeles, CA' }
])

Recipe.destroy_all

recipe = Recipe.create([
  { name: 'Chicken Delight', description: "It's a delightful chicken.", ingredients: "Chicken, Garlic, Lemon", instructions: 'Step 1 - Clean the chicken.' },
  { name: 'Spaghetti', description: "It's a spicy meatball!", ingredients: "Pasta, Marinara sauce", instructions: 'Step 1 - Cook the pasta.' },
  { name: 'Fruit Salad', description: "This is a lovely fruit salad.", ingredients: "Salad, Fruits", instructions: 'Step 1 - Cut up fruit into bite-size pieces.' }
])