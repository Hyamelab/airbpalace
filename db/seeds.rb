# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Palace.create(name: "Four Seasons Hotel George V", description: "Situé à deux pas des Champs-Élysées, ce palace incarne l'élégance parisienne avec ses somptueuses suites et son service impeccable.", adress: "31 Avenue George V, 75008 Paris, France")
Palace.create(name: "Hôtel de Crillon, A Rosewood Hotel", description: "Symbole du raffinement français, cet hôtel historique offre une vue imprenable sur la Place de la Concorde.", adress: "10 Place de la Concorde, 75008 Paris, France")
Palace.create(name: "Le Meurice", description: "Alliant luxe et art, Le Meurice est un palace emblématique situé face au Jardin des Tuileries.", adress: "228 Rue de Rivoli, 75001 Paris, France")
