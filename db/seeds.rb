# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])



#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do |n|
  email = Faker::Internet.email
  password = "password"
  name = Faker::Internet.user_name('Nancy')
  User.create!(email: email,
               name: name,
               password: password,
               password_confirmation: password
               )
end

100.times do |n|
  user_name = Faker::Internet.user_name
  fix_umlauts = "fix_umlauts"
  Blog.create!(title: user_name,
               content: fix_umlauts,
               user_id: n
               )
               
end
