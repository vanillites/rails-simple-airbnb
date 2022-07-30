# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "🗑 Clearing DB..."
Flat.destroy_all

puts "🌱 Seeding data..."
i = 1

100.times do
  Flat.create!(
    name: "Flat ##{i}",
    address: Faker::Address.full_address,
    description: "This is a description of an apartment near downtown #{Faker::Nation.capital_city}! It's a short walk from popular bars and restaurants.",
    price_per_night: (100..1000).to_a.sample,
    number_of_guests: (1..5).to_a.sample
  )
  i += 1
end

puts "✨ All done!"
