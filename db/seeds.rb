# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
start_at = DateTime.strptime('2001-02-03T10:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z')
end_at = DateTime.strptime('2001-02-03T17:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z')

Profile.destroy_all
Registration.destroy_all
Photo.destroy_all
Category.destroy_all
Event.destroy_all
User.destroy_all

#Users
kevin = User.create!(email: "kevin.chung@codaisseurup.com", password: "12345678")
smith = User.create!(email: "agent.smith@codaisseurup.com", password: "12345678")
megan = User.create!(email: "megan@codaisseurup.com", password: "12345678")

#Categories
leisure = Category.create!(name: "Leisure")
nature = Category.create!(name: "Nature")
racing = Category.create!(name: "Racing")
food = Category.create!(name: "Food")
sport = Category.create!(name: "Sport")

#Events
event1 = Event.create!(name: "Paintball Sunday", description: "Bring your guns and mostly importantly, your enthusiasm!", location: "Amsterdam", price: 20, capacity: 25, includes_food: true, includes_drinks: true, starts_at: start_at, ends_at: end_at, active: true, user: kevin, categories: [nature, sport])
event2 = Event.create!(name: "Amsterdam Pizza Festival", description: "Bring your Italian flavours!", location: "Amsterdam", price: 10, capacity: 35, includes_food: true, includes_drinks: true, starts_at: start_at, ends_at: end_at, active: true, user: megan, categories: [food, leisure])


#photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504773994/event1_ghrqmj.jpg", event: event1)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504773991/event2_hzridu.jpg", event: event2)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504773988/event3_s8bcm2.jpg", event: event2)


#registrations
Registration.create!(event: event2, user: kevin, price: 30, guests_count: 3)
Registration.create!(event: event2, user: smith, price: 20, guests_count: 2)
