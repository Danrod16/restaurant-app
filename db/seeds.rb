# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroy restaurants"
Restaurant.destroy_all

puts "Creating restaurants"

50.times do |restaurant|
  r = Restaurant.create!(name: Faker::Commerce.brand, capacity: rand(5..100), chef_name: Faker::Name.name  )
  puts "#{r.name} created"
end

puts "Seeding finished!"
