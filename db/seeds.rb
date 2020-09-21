# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Task.destroy_all
Family.destroy_all
Event.destroy_all
CalendarEvent.destroy_all

#family seed data
fam1 = Family.create(family_name: "The Coops")
fam2 = Family.create(family_name: "Jackson's")

# user seed data
#family 1
u1 = User.create(name: "Danny", category: "parent", points: 10, password: 'password',family_id: fam1.id)
u2 = User.create(name: "Skyler", category: "parent", points: 10, password: 'password',family_id: fam1.id)
u3 = User.create(name: "Mike", category: "child", points: 300, password: 'password',family_id: fam1.id)
u4 = User.create(name: "Zara", category: "child", points: 800, password: 'password',family_id: fam1.id)
u5 = User.create(name: "Dave", category: "child", points: 400, password: 'password',family_id: fam1.id)
u6 = User.create(name: "Cat", category: "child", points: 350, password: 'password',family_id: fam1.id)

#family2
u7 = User.create(name: "Tom", category: "parent", points: 10, password: 'password',family_id: fam2.id)
u8 = User.create(name: "Alex", category: "parent", points: 10, password: 'password',family_id: fam2.id)
u9 = User.create(name: "Diego", category: "child", points: 250, password: 'password',family_id: fam2.id)
u10 = User.create(name: "Luis", category: "child", points: 700, password: 'password',family_id: fam2.id)
u11 = User.create(name: "David", category: "child", points: 600, password: 'password',family_id: fam2.id)
u12 = User.create(name: "Esther", category: "child", points: 450, password: 'password',family_id: fam2.id)

# task seed data
Task.create(name: "Clean living room", description: "pick up the toys, sweep the floor", points: 40, user_id: u3.id)
Task.create(name: "Dishes", description: "fill the dish washer and wash the pots and pans", points: 20, user_id: u4.id)
Task.create(name: "Clean the BathRoom", description: "Clean the sink, toilot, bathtub, and mop the floor", points: 40, user_id: u5.id)
Task.create(name: "Cook diner", description: "Make some thing good", points: 20, user_id: u6.id)
Task.create(name: "Make lunches", description: "pack the lunches for school tommorow", points: 40, user_id: u9.id)
Task.create(name: "Walk the dog", description: "Take the dog out for a walk when you get home from school", points: 20, user_id: u10.id)
Task.create(name: "babysit", description: "Watch little sibling", points: 40, user_id: u11.id)
Task.create(name: "mow the lawn", description: "cut the grass", points: 20, user_id: u12.id)
Task.create(name: "Take out the tash", description: "take the trash out on monday", points: 40, user_id: u3.id)
Task.create(name: "Clean bedroom", description: "clearn your room", points: 20, user_id: u4.id)
Task.create(name: "laundry", description: "clearn your room", points: 20, user_id: u5.id)
Task.create(name: "Pick up little brother", description: "should be in front of the school at 2:pm", points: 20, user_id: u6.id)
Task.create(name: "Help on grocery run", description: "help pick what food to get and take the food inside", points: 20, user_id: u9.id)
Task.create(name: "Help hook up the new tv", description: "set the tv up", points: 20, user_id: u10.id)
Task.create(name: "Clean the pool", description: "Get the leafs out of the pool", points: 20, user_id: u11.id)
Task.create(name: "Clean the garage", description: "Move the boxes to the the right side of the garage", points: 20, user_id: u12.id)
Task.create(name: "Fix the lightbulb", description: "Change the lighbulb that keeps flicking", points: 20, user_id: u3.id)
Task.create(name: "wash the car", description: "Wash the car", points: 20, user_id: u4.id)

#Event seed data
CalendarEvent.create(title: "Final project showcase", date: "2020-09-10", end: "2020-09-10", user_id: u1.id, family_id: fam1.id)
CalendarEvent.create(title: "Final project showcase", date: "2020-09-10", end: "2020-09-10", user_id: u7.id, family_id: fam2.id)