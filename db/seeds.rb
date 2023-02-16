# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'faker'

City.destroy_all
User.destroy_all
Tag.destroy_all
Gossip.destroy_all
PrivateMessage.destroy_all
Like.destroy_all
Comment.destroy_all

10.times do |_| # Create 10 cities
  City.create(name: Faker::Movies::StarWars.planet,
              zip_code: Faker::Address.zip_code)
end

10.times do |_| # Create 10 users
  User.create(first_name: Faker::Movies::StarWars.call_squadron,
              last_name: Faker::Movies::StarWars.specie,
              age: rand(18..60),
              description: Faker::Movies::StarWars.quote,
              city: City.all.sample)
  User.last.update(email: Faker::Internet.email(name: [User.last.first_name, User.last.last_name].join('.')))
end

10.times do |_| # Create 10 tags
  Tag.create(title: '#' + Faker::Movies::StarWars.droid)
end

20.times do |_| # Create 20 gossips
  Gossip.create(title: Faker::Movies::StarWars.character,
                content: Faker::Quote.yoda,
                user: User.all.sample)
  rand(1..4).times do |_i|
    Gossip.last.tags << Tag.all.sample
  end
  # Gossip.last.tags.uniq!
end

5.times do |_| # Create 5 private messages
  PrivateMessage.create(content: Faker::Movies::StarWars.wookiee_sentence,
                        sender: User.all.sample)
  rand(1..3).times do |_i|
    PrivateMessage.last.recipients << User.all.sample
  end
end

50.times do |_| # Create 50 comments
  Comment.create(user: User.all.sample,
                 gossip: Gossip.all.sample,
                 content: Faker::Movies::StarWars.quote)
end

50.times do |_| # Create 50 comments of comments
  Comment.create(user: User.all.sample,
                 parent_comment: Comment.all.sample,
                 content: Faker::Movies::StarWars.quote)
end

10.times do |_| # Create 10 likes of gossips
  Like.create(user: User.all.sample,
              gossip: Gossip.all.sample)
end

10.times do |_| # Create 10 likes of comments
  Like.create(user: User.all.sample,
              comment: Comment.all.sample)
end