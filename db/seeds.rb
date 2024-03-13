# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
Trip.destroy_all
User.destroy_all

user = User.new(
  first_name: "Camila",
  last_name: "Ruiz",
  age: Faker::Number.between(from: 18, to: 90),
  email: "camila@gmail.com",
  password: "password"

)
user.save!

20.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(from: 18, to: 90),
    email: Faker::Internet.email,
    password: "password1"

  )
  user.save!
end

1000.times do
  trip = Trip.new(
    destination: Faker::Address.country,
    arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
    departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now)
  )
  trip.user = User.all.sample
  trip.save!
Interest.destroy_all

['Adventure', 'Ecotourism', 'Cultural Immersion', 'Cullinary', 'Backpacking', 'Art and Museums', 'Festivals and Events'].each do |name|
  Interest.create(name: name)
end
