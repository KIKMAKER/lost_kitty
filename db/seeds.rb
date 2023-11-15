# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing database"

Pet.destroy_all

puts "Creating fake pets"

spot = Pet.new(name: "Spot", date: Date.today - 4, species: "snake")
spot.save
gully = Pet.new(name: "Gulliver", date: Date.today - 2, species: "horse")
gully.save
john = Pet.new(name: "John", date: Date.today - 4, species: "rabbit")
john.save

puts "#{Pet.count} pets created"

puts "Seed file complete"
