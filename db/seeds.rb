# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
cat1 = Category.create(name: 'Breakfast')
cat2 = Category.create(name: 'Lunch')
cat3 = Category.create(name: 'Dinner')
cat4 = Category.create(name: 'Beverages')

Item.create(
  name: 'Rujak',
  description: 'Salad dish of Javanese origin, commonly found in Indonesia, Malaysia and Singapore.',
  price: 50,
  categories: [cat1, cat2]
)

Item.create(
  name: 'Tahu',
  description: 'Prepared by coagulating soy milk and then pressing the resulting curds into solid white blocks of varying softness.',
  price: 30,
  categories: [cat1, cat2, cat3]
)

Item.create(
  name: 'Soda Gembira',
  description: 'Made up of carbonated water, condensed milk, syrup and ice.',
  price: 25,
  categories: [cat4]
)

Item.create(
  name: 'Teh',
  description: 'Aromatic beverage prepared by pouring hot or boiling water over cured or fresh leaves of Camellia sinensis.',
  price: 15,
  categories: [cat4]
)

Customer.create(name: 'Ali', email: 'ali@email.com')
Customer.create(name: 'Boa', email: 'boa@email.com')
Customer.create(name: 'Coy', email: 'coy@email.com')
Customer.create(name: 'Dea', email: 'dea@email.com')
