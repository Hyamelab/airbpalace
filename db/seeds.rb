# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Palace.destroy_all
User.destroy_all
puts "les user sont detruits"

user1 = User.create!(first_name: "bob", last_name: "yes", email: "bob.yes@gmail.com", password: "testdemdp")
puts "les user sont crées"

puts "les palaces sont détruits"

palace1 = Palace.new(name: "Four Seasons Hotel George V", description: "Situé à deux pas des Champs-Élysées, ce palace incarne l'élégance parisienne avec ses somptueuses suites et son service impeccable.", address: "31 Avenue George V, 75008 Paris, France", price: "2500€/nuit")
palace1.user = user1
palace1.save!

palace2 = Palace.new(name: "Hôtel de Crillon, A Rosewood Hotel", description: "Symbole du raffinement français, cet hôtel historique offre une vue imprenable sur la Place de la Concorde.", address: "10 Place de la Concorde, 75008 Paris, France", price: "2500€/nuit")
palace2.user = user1
palace2.save!

palace3 = Palace.new(name: "Le Meurice", description: "Alliant luxe et art, Le Meurice est un palace emblématique situé face au Jardin des Tuileries.", address: "228 Rue de Rivoli, 75001 Paris, France", price: "2500€/nuit")
palace3.user = user1
palace3.save!

puts "les palaces sont crées"
puts "yes"
