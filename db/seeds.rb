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
    name: "Regina",
    surname: "Falangie",
    instagram: "@mrPotatoHead",
    about: "Regina Falangie is a french art critic and curator living and working in Paris, France. His poetic paintings, sculptures and installations reference weaving and architecture, reminding us of the origins of culture in crafting and the interconnectedness of all things, from single threads to the multiverse."
  )
avatar_img_one = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQHPrW5xL5ScQQ/profile-displayphoto-shrink_800_800/0/1598974575465?e=1651104000&v=beta&t=Sgy7XX23qLFIXplFoiWE58YaYX0CKGh3GzxaA2gHtS4')
one.avatar.attach(io: avatar_img_one, filename: 'nes.png', content_type: 'image/png')

puts "User 👨‍🦰 'one' Created"

two = User.create!(
  email: "two@mail.com",
  password: "123456",
  name: "Patrick",
  surname: "Frocksucka",
  instagram: "@SuckaFrock",
  about: "Patrick Frocksucka is a peruvian art critic and curator living and working in Paris, France. His poetic paintings, sculptures and installations reference weaving and architecture, reminding us of the origins of culture in crafting and the interconnectedness of all things, from single threads to the multiverse."
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
    rich_body: (Faker::Lorem.paragraphs(number: 360)).join,
    tagline: Faker::Quotes::Shakespeare.as_you_like_it_quote,
    date: Faker::Date.between(from: '2020-09-23', to: '2021-04-25'),
    author: Faker::Name.name_with_middle,
    user: one,
    )
end
puts "======5 Articles created"


puts "======🖼 Creating 5 Exhibitions"
5.times do
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
end
puts "======5 Exhibitions created"

