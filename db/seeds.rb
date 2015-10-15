# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

keith = User.create(username: "@keithconroy", followers: 1234, following: 4123)
kec = User.create(username: "@KECJR", followers: 12, following: 41)

numbers = [12, 43, 23, 10, 0, 2]

30.times do
  Tweet.create(
    body: Faker::Hacker.say_something_smart,
    favorites: numbers.sample,
    retweets: numbers.sample,
    user_id: keith.id
  )
end

10.times do
  Tweet.create(
    body: Faker::Hacker.say_something_smart,
    favorites: numbers.sample,
    retweets: numbers.sample,
    user_id: kec.id
  )
end