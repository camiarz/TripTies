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





require "open-uri"

Interest.destroy_all

INTERESTS = ['Adventure', 'Ecotourism', 'Cultural Immersion', 'Culinary', 'Backpacking', 'Art and Museums', 'Festivals and Events']
INTERESTS.each do |name|
  Interest.create(name: name)
end

require 'faker'
Chatroom.destroy_all
Trip.destroy_all
Match.destroy_all
User.destroy_all


file0 = URI.open('https://images.unsplash.com/photo-1598550874175-4d0ef436c909?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
user0 = User.create!(
  first_name: "Eugenie",
  last_name: "Elisa",
  age: Faker::Number.between(from: 18, to: 30),
  bio: "Adventuring through life, one mountain at a time. On a mission to explore the extraordinary🌞🛤️.",
  email: "eugenie@gmail.com",
  password: "password"
)
user0.photo.attach(io: file0, filename: 'photo', content_type: 'image/png')
user0.save!

file01 = URI.open('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
user01 = User.new(
  first_name: "Camila",
  last_name: "Ruiz",
  age: Faker::Number.between(from: 18, to: 90),
  bio: "Sunset chaser and sunrise lover 🌅. Lost in the beauty of Mother Earth 🌎.",
  email: "camila@gmail.com",
  password: "password"
)
user01.photo.attach(io: file01, filename: 'photo', content_type: 'image/png')
user01.save!

# 20.times do
#   User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     age: Faker::Number.between(from: 18, to: 50),
#     email: Faker::Internet.email,
#     password: "password1"
#   )
# end

file1 = URI.open('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
user1 = User.new(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 age: Faker::Number.between(from: 18, to: 50),
                 email: Faker::Internet.email,
                 password: "password1")
user1.photo.attach(io: file1, filename: 'photo', content_type: 'image/png')
user1.save!

file2 = URI.open('https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
user2 = User.new(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 age: Faker::Number.between(from: 18, to: 50),
                 email: Faker::Internet.email,
                 password: "password1")
user2.photo.attach(io: file2, filename: 'photo', content_type: 'image/png')
user2.save!

file3 = URI.open('https://images.unsplash.com/photo-1619895862022-09114b41f16f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
user3 = User.new(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 age: Faker::Number.between(from: 18, to: 50),
                 email: Faker::Internet.email,
                 password: "password1")
user3.photo.attach(io: file3, filename: 'photo', content_type: 'image/png')
user3.save!

file4 = URI.open("https://images.unsplash.com/photo-1517841905240-472988babdf9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user4 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user4.photo.attach(io: file4, filename: 'photo', content_type: 'image/png')
user4.save!

file5 = URI.open("https://images.unsplash.com/photo-1544723795-3fb6469f5b39?q=80&w=1889&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user5 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user5.photo.attach(io: file5, filename: 'photo', content_type: 'image/png')
user5.save!

file6 = URI.open("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user6 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user6.photo.attach(io: file6, filename: 'photo', content_type: 'image/png')
user6.save!

file7 = URI.open("https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user7 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user7.photo.attach(io: file7, filename: 'photo', content_type: 'image/png')
user7.save!

file8 = URI.open("https://images.unsplash.com/photo-1558898479-33c0057a5d12?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user8 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user8.photo.attach(io: file8, filename: 'photo', content_type: 'image/png')
user8.save!

file9 = URI.open("https://images.unsplash.com/photo-1624561172888-ac93c696e10c?q=80&w=1889&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user9 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user9.photo.attach(io: file9, filename: 'photo', content_type: 'image/png')
user9.save!

file10 = URI.open("https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?q=80&w=1856&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user10 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user10.photo.attach(io: file10, filename: 'photo', content_type: 'image/png')
user10.save!

file11 = URI.open("https://images.unsplash.com/photo-1521856729154-7118f7181af9?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user11 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user11.photo.attach(io: file11, filename: 'photo', content_type: 'image/png')
user11.save!

file12 = URI.open("https://images.unsplash.com/photo-1584999734482-0361aecad844?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user12 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user12.photo.attach(io: file12, filename: 'photo', content_type: 'image/png')
user12.save!

file13 = URI.open("https://images.unsplash.com/photo-1519456264917-42d0aa2e0625?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user13 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user13.photo.attach(io: file13, filename: 'photo', content_type: 'image/png')
user13.save!

file14 = URI.open("https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user14 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user14.photo.attach(io: file14, filename: 'photo', content_type: 'image/png')
user14.save!

file15 = URI.open("https://images.unsplash.com/photo-1607746882042-944635dfe10e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user15 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user15.photo.attach(io: file15, filename: 'photo', content_type: 'image/png')
user15.save!

file16 = URI.open("https://images.unsplash.com/photo-1625897428517-7e2062829a26?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user16 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user16.photo.attach(io: file16, filename: 'photo', content_type: 'image/png')
user16.save!

file17 = URI.open("https://images.unsplash.com/photo-1613145997970-db84a7975fbb?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user17 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user17.photo.attach(io: file17, filename: 'photo', content_type: 'image/png')
user17.save!

file18 = URI.open("https://images.unsplash.com/photo-1534308143481-c55f00be8bd7?q=80&w=1930&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user18 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user18.photo.attach(io: file18, filename: 'photo', content_type: 'image/png')
user18.save!

file19 = URI.open("https://plus.unsplash.com/premium_photo-1689977807477-a579eda91fa2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user19 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user19.photo.attach(io: file19, filename: 'photo', content_type: 'image/png')
user19.save!

file20 = URI.open("https://images.unsplash.com/photo-1581992652564-44c42f5ad3ad?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
user20 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.between(from: 18, to: 50),
  email: Faker::Internet.email,
  password: "password1"
)
user20.photo.attach(io: file20, filename: 'photo', content_type: 'image/png')
user20.save!




countries = [
    {
      name: "Utah",
      image_url: "https://images.pexels.com/photos/161820/monument-valley-west-western-161820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    },
    {
      name: "Santorini",
      image_url: "https://images.pexels.com/photos/1010645/pexels-photo-1010645.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      name: "Phuket",
      image_url: "https://images.pexels.com/photos/18223260/pexels-photo-18223260/free-photo-of-phi-phi-island.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    },
    {
      name: "Machu Picchu",
      image_url: "https://images.pexels.com/photos/5952571/pexels-photo-5952571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    },
    {
      name: "Sevilla",
      image_url: "https://images.pexels.com/photos/16778460/pexels-photo-16778460/free-photo-of-old-gothic-castle-with-bridge-under-river.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    }

    ]

    3.times do
      Trip.create!(
          user: User.where.not(email: "eugenie@gmail.com").order("RANDOM()").first,
          destination: "China",
          image_url: "https://images.unsplash.com/photo-1508804052814-cd3ba865a116?q=80&w=2070&auto=format&f[…]3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          arrival: Faker::Date.between(from: Date.today, to: 1.years.from_now),
          departure: Faker::Date.between(from: 1.day.from_now, to: 1.years.from_now),
          description: Faker::Lorem.paragraph,
        )
    end

    trip = Trip.create!(
      user: user01,
      destination: "China",
      arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
      departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now),
      image_url: "https://images.unsplash.com/photo-1508804052814-cd3ba865a116?q=80&w=2070&auto=format&f[…]3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      description: Faker::Lorem.paragraph
    )

    1.times do
      Trip.create!(
          user: User.where.not(email: "eugenie@gmail.com").order("RANDOM()").first,
          destination: "China",
          image_url: "https://images.unsplash.com/photo-1508804052814-cd3ba865a116?q=80&w=2070&auto=format&f[…]3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          arrival: Faker::Date.between(from: Date.today, to: 1.years.from_now),
          departure: Faker::Date.between(from: 1.day.from_now, to: 1.years.from_now),
          description: Faker::Lorem.paragraph,
        )
    end


50.times do
  country = countries.sample
  Trip.create!(
      user: User.where.not(email: "eugenie@gmail.com").order("RANDOM()").first,
      destination: country[:name],
      image_url: country[:image_url],
      arrival: Faker::Date.between(from: Date.today, to: 1.years.from_now),
      departure: Faker::Date.between(from: 1.day.from_now, to: 1.years.from_now),
      description: Faker::Lorem.paragraph,
    )
end

  Trip.create!(
    user: user0,
    destination: "Santorini",
    arrival: Faker::Date.between(from: Date.today, to: 1.years.from_now),
    departure: Faker::Date.between(from: 1.day.from_now, to: 1.years.from_now),
    image_url: "https://images.pexels.com/photos/1010645/pexels-photo-1010645.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    description: Faker::Lorem.paragraph
  )


    trip = Trip.create!(
      user: user0,
      destination: "Utah",
      arrival: Faker::Date.between(from: Date.today, to: 1.years.from_now),
      departure: Faker::Date.between(from: 1.day.from_now, to: 1.years.from_now),
      image_url: "https://images.pexels.com/photos/161820/monument-valley-west-western-161820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      description: Faker::Lorem.paragraph
    )

    trip = Trip.create!(
      user: user0,
      destination: "Sevilla",
      arrival: Faker::Date.between(from: Date.today, to: 2.years.from_now),
      departure: Faker::Date.between(from: 1.day.from_now, to: 2.years.from_now),
      image_url: "https://images.pexels.com/photos/16778460/pexels-photo-16778460/free-photo-of-old-gothic-castle-with-bridge-under-river.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      description: Faker::Lorem.paragraph
    )
