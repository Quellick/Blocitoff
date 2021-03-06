# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
    Item.create([{
        name: Faker::Name.name
    }])
end

10.times do
    User.create([{
        email: Faker::Internet.email,
        password: 'password'
    }])
end

puts "Seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"