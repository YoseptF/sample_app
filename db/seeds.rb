# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  name: 'joseph',
  email: 'yosept.flores@gmail.com',
  password: '123lol',
  password_confirmation: '123lol',
  admin: true,
  activated: true,
  activated_at: Time.zone.now
)
User.create(
  name: 'saul',
  email: 'fell_my_power@live.com',
  password: '528322',
  password_confirmation: '528322',
  activated: true,
  activated_at: Time.zone.now
)

User.create!(name:  "Example User",
  email: "example@railstutorial.org",
  password:              "foobar",
  password_confirmation: "foobar",
  activated: true,
  activated_at: Time.zone.now
)

99.times do |i|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "#{i}__lol",
    password_confirmation: "#{i}__lol",
    activated: true,
    activated_at: Time.zone.now
  )
end
