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
palais = { name: "Le Palais de la Chine", address: "12 Rue de la Paix, Paris, France", phone_number: "01 42 65 00 00", category: "chinese" }
trattoria = { name: "Trattoria da Giovanni", address: "45 Rue de la République, Paris, France", phone_number: "01 76 45 89 01", category: "italian" }
sakura = { name: "Sakura Sushi", address: "34 Rue des Filles du Calvaire, Paris, France", phone_number: "01 47 00 20 31", category: "japanese" }
gourmet = { name: "Bistro Le Gourmet", address: "5 Avenue des Champs-Élysées, Paris, France", phone_number: "O1 45 67 89 00", category: "french" }
brasserie = { name: "La Brasserie Belge", address: "23 Rue des Bouchers, Paris, France", phone_number: "01 48 00 12 35", category: "belgian" }

[palais, trattoria, sakura, gourmet, brasserie].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
