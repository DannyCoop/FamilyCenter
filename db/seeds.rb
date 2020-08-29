# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

# user seed data
User.create(name: "Danny", category: "parent", points: 30)
User.create(name: "Mike", category: "child", points: 300)
User.create(name: "Tom", category: "child", points: 40)
User.create(name: "Bob", category: "child", points: 200)

# task seed data
Task.create(name: "Clean living room", description: "pick up the toys, sweep the floor", points: 40)
Task.create(name: "wash the dishes", description: "fill the dish washer and wash the pots and pans", points: 20)

#Event seed data
Event.create(name: "Toms play", description: "Tom has the lead role in the school play", event_date: "2020-11-9")
Event.create(name: "Movie night", description: "watching moana", event_date: "2020-11-10")