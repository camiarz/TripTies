# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# require 'faker'

# Trip.destroy_all
# Match.destroy_all
# User.destroy_all

# user = User.create!(
#   first_name: "Camila",
#   last_name: "Ruiz",
#   age: Faker::Number.between(from: 18, to: 90),
#   email: "camila@gmail.com",
#   password: "password"
# )
# user.save!

# 20.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     age: Faker::Number.between(from: 18, to: 50),
#     email: Faker::Internet.email,
#     password: "password1"
#   )
#   user.save!
# end

#   trip = Trip.create!(
#     destination: "greece",
#     arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
#     departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now),
#     image_url: "https://images.pexels.com/photos/1010657/pexels-photo-1010657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
#   )







Interest.destroy_all

['Adventure', 'Ecotourism', 'Cultural Immersion', 'Culinary', 'Backpacking', 'Art and Museums', 'Festivals and Events'].each do |name|
  Interest.create(name: name)
end

require 'faker'
Trip.destroy_all
Match.destroy_all
User.destroy_all
user = User.create!(
  first_name: "Camila",
  last_name: "Ruiz",
  age: Faker::Number.between(from: 18, to: 90),
  email: "camila@gmail.com",
  password: "password"
)
20.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(from: 18, to: 50),
    email: Faker::Internet.email,
    password: "password1"
  )
end

  Trip.create!(
    user: user,
    destination: "greece",
    arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
    departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now),
    image_url: "https://images.pexels.com/photos/1010657/pexels-photo-1010657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  )


    trip = Trip.create!(
      user: user,
      destination: "new york",
      arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
      departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now),
      image_url: "https://images.pexels.com/photos/2190283/pexels-photo-2190283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    )



    trip = Trip.create!(
      user: user,
      destination: "thailand",
      arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
      departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now),
      image_url: "https://images.pexels.com/photos/1007657/pexels-photo-1007657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    )



    trip = Trip.create!(
      user: user,
      destination: "dubai",
      arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
      departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now),
      image_url: "https://images.pexels.com/photos/2044434/pexels-photo-2044434.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    )



    trip = Trip.create!(
      user: user,
      destination: "tokyo",
      arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
      departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now),
      image_url: "https://images.pexels.com/photos/161309/traditional-and-technology-zojoji-temple-tokyo-culture-161309.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    )
# Create trips for other destinations similarly
Interest.destroy_all
['Adventure', 'Ecotourism', 'Cultural Immersion', 'Culinary', 'Backpacking', 'Art and Museums', 'Festivals and Events'].each do |name|
  Interest.create(name: name)
end
