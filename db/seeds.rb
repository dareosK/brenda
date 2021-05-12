# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "date"
require "open-uri"
require 'faker'


Article.destroy_all
Exhibition.destroy_all
User.destroy_all

# ========== #
# USER SEEDS #
# ========== #
puts "======👨‍🦰👳‍♀️ Creating Users"
one = User.create!(
    email: "one@mail.com",
    password: "123456",
  )

puts "User 👨‍🦰 'one' Created"

two = User.create!(
  email: "two@mail.com",
  password: "123456",
  )

puts "User 👳‍♀'two' Created"

puts "======Users created"

# ============= #
# ARTICLE SEEDS #
# ==========--- #

puts "======📝 Creating Articles"
5.times do
  Article.create(
    title: Faker::Quote.yoda,
    body: (Faker::Lorem.paragraphs(number: 360)).join,
    tagline: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    date: Faker::Date.between(from: '2020-09-23', to: '2021-04-25'),
    author: Faker::Name.name_with_middle,
    user: one,
    )
end
puts "======5 Articles created"


puts "======🖼 Creating one Exhibition"
Exhibition.create!(
  user: one,
  title: Faker::Quote.yoda,
  artists: "#{Faker::Artist.name}, #{Faker::GreekPhilosophers.name}, #{Faker::Artist.name}, #{Faker::Artist.name}",
  institution_name: "Galerie du Lendemain",
  institution_address: "#{Faker::Address.street_name}, #{Faker::Address.city}",
  curated_by: "Antoine Champenois",
  text: (Faker::Lorem.paragraphs(number: 200)).join,
  start_date: Faker::Date.between(from: '2020-09-23', to: '2020-09-25'),
  end_date: Faker::Date.between(from: '2020-10-10', to: '2020-10-15'),
  )
puts "======Exhibition created"

