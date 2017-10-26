# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.username = "Trippa"
u.email = "trystansykes@gmail.com"
u.password = "puddings"
u.avatar_url = "https://i.pinimg.com/originals/77/42/21/774221482ea2d1272669fdadce968807.png"
u.bio = "I'm a Starcraft 2 and Dota 2 player primarily but def don't mind a bit of FPS now and then. Also a VR enthustiast. Interested in playing games and also watching esports events."
u.save

g = Game.new
g.name = "Starcraft 2"
g.save

c = Category.new
c.name = "Esports"
c.save

e = Event.new
e.user_id = 1
e.title = "Starcraft 2 Lan Party"
e.location = "45 William St, Melbourne, Victoria, 3000"
e.game_id = 1
e.category_id = 1
e.about = "This is an event for SC2 players of all skill levels to come together to play some games and improve their play. There will also be a double elimination bracket tournament for the GM and Masters players."
e.active = true
e.save

a = Attendee.new
a.user_id = 1
a.event_id = 1
a.save
