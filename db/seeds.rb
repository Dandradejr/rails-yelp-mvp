# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4}
novilho = {name: "Novilho", address: "Mourato coelho 350", rating: 5}
pizza_napoli =  {name: "Pizzaria Napoli", address: "Faria Lima, 1050", rating: 4}
mc_donalds =  {name: "Mc Donalds", address: "Av: Paulista, 1000", rating: 2}

[dishoom, pizza_east, novilho, pizza_napoli, mc_donalds].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
