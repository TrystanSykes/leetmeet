# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Vote.destroy_all
Game_interest.destroy_all
Category_interest.destroy_all
Attendee.destroy_all
Event.destroy_all
Category.destroy_all
Game.destroy_all
User.destroy_all




u1 = User.new
u1.username = "Trippa"
u1.email = "trystansykes@gmail.com"
u1.password = "puddings"
u1.avatar_url = "https://i.pinimg.com/originals/77/42/21/774221482ea2d1272669fdadce968807.png"
u1.bio = "I'm a Starcraft 2 and Dota 2 player primarily but def don't mind a bit of FPS now and then. Also a VR enthustiast. Interested in playing games and also watching esports events."
u1.save

u2 = User.new
u2.username = "fiona"
u2.email = "fj@ga.com"
u2.password = "puddings"
u2.avatar_url = "http://icons.iconarchive.com/icons/hopstarter/face-avatars/256/Female-Face-FI-2-icon.png"
u2.bio = "I like to play counterstrike, please add me on steam so I can kill you ;)"
u2.save

u3 = User.new
u3.username = "Kangb0tmang"
u3.email = "jon.kang.jd@gmail.com"
u3.password = "puddings"
u3.avatar_url = "https://vignette3.wikia.nocookie.net/vsbattles/images/9/96/Zhaoyunbody.png/revision/latest?cb=20160302085748"
u3.bio = "I am a master coder and I also like to button mash tekken 7 because tekken is crap so you should play streetfighter"
u3.save

u4 = User.new
u4.username = "lyle"
u4.email = "lyle.innes@gmail.com"
u4.password = "puddings"
u4.avatar_url = "http://static.tvtropes.org/pmwiki/pub/images/9f4060c640938747f7985a907cb06b83.png"
u4.bio = "I am currently stuck in elo hell with Overwatch ranked play (2000sr), I am also playing Zelda BoTW and like to school nOObs in any version of StreetFighter >:D"
u4.save

g1 = Game.new
g1.name = "Starcraft 2"
g1.remote_logo_url = "http://static.mnium.org/images/contenu/actus/sc2/mini_logo_starcraft2_sc2.png"
g1.save

g2 = Game.new
g2.name = "Overwatch"
g2.remote_logo_url = "https://seeklogo.com/images/O/overwatch-logo-B94AF89716-seeklogo.com.png"
g2.save

g3 = Game.new
g3.name = "CounterStrike: GO"
g3.remote_logo_url = "https://www.nptgaming.com/templates/npt/html/img/cs-go11.png"
g3.save

c1 = Category.new
c1.name = "Esports"
c1.save


e1 = Event.new
e1.user_id = u1.id
e1.title = "Starcraft 2 Lan Party"
e1.location = "45 William St, Melbourne, Victoria, 3000"
e1.game_id = g1.id
e1.category_id = c1.id
e1.about = "This is an event for SC2 players of all skill levels to come together to play some games and improve their play. There will also be a double elimination bracket tournament for the GM and Masters players."
e1.active = true
e1.save

e2 = Event.new
e2.user_id = u4.id
e2.title = "CS:GO Tournament"
e2.location = "280 City Rd, Southbank VIC 3006"
e2.game_id = g3.id
e2.category_id = c1.id
e2.about = "Zen Gaming Lounge & MSI is proud to announce that we are holding our third Counter-Strike Global Offensive tournament. Limited to only 8 teams, spots are limited and will fill up fast! Make sure you register ASAP to ensure your spot in the tournament."
e2.active = true
e2.save

