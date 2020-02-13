# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

100.times do
    city = City.create!(name: Faker::Address.city)
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 70), city: city)
    gossip = Gossip.create!(title: Faker::Quote.famous_last_words, content: Faker::Quote.famous_last_words, user: user)
    tag = Tag.create!(title: "#" + Faker::Science.element)
    join_table_gossip_tag = JoinTableGossipTag.create!(tag: tag, gossip: gossip)
end

# t.string :title
# t.text :content
# t.belongs_to :users
# t.belongs_to :join_table_gossip_tag