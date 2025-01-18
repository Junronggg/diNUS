# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create([
  { name: "Joe's Diner", address: "123 Main St", cuisine: "American", rating: 4 },
  { name: "Sushi Place", address: "456 Elm St", cuisine: "Japanese", rating: 5 },
  { name: "Pasta House", address: "789 Oak St", cuisine: "Italian", rating: 3 },
  { name: "Taco Town", address: "101 Maple St", cuisine: "Mexican", rating: 4 },
  { name: "Curry Corner", address: "202 Pine St", cuisine: "Indian", rating: 5 }
])
