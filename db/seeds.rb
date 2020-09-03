# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

#family seed data
fam1 = Family.create(family_name: "The Coops")

# user seed data
u1 = User.create(name: "Danny", category: "parent", points: 30, password: 'password',family_id: fam1.id)
u2 = User.create(name: "Mike", category: "child", points: 300, password: 'password',family_id: fam1.id)
u3 = User.create(name: "Tom", category: "child", points: 40, password: 'password',family_id: fam1.id)
u4 = User.create(name: "Bob", category: "child", points: 200, password: 'password',family_id: fam1.id)

# task seed data
Task.create(name: "Clean living room", description: "pick up the toys, sweep the floor", points: 40, user_id: u2.id)
Task.create(name: "wash the dishes", description: "fill the dish washer and wash the pots and pans", points: 20, user_id: u2.id)

#Event seed data
Event.create(name: "Toms play", description: "Tom has the lead role in the school play", event_date: "2020-11-9")
Event.create(name: "Movie night", description: "watching moana", event_date: "2020-11-10")