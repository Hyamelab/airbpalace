Palace.destroy_all
Booking.destroy_all
User.destroy_all
puts "les user sont detruits"

user1 = User.create!(first_name: "Hippolyte", last_name: "Girardot", email: "yes@gmail.com", password: "testdemdp")
file = File.open(Rails.root.join("app/assets/images/seeds/user_1/avatar.jpg"))
user1.photo.attach(io: file, filename: "avatar-image.jpg", content_type: "image/jpg")

user1.save!

user2 = User.create!(first_name: "Lucie", last_name: "Bernard", email: "lucie@gmail.com", password: "testdemdp")
file = File.open(Rails.root.join("app/assets/images/seeds/user_2/avatar.jpg"))
user2.photo.attach(io: file, filename: "avatar-image.jpg", content_type: "image/jpg")

user2.save!
puts "les user sont crées"

puts "les palaces sont détruits"

puts "création des palais de user1"

palace1 = Palace.new(name: "Villa Poseidon's Crown", description: "Perched on a hillside, this sun-drenched Grecian palace offers breathtaking Mediterranean views, marble columns, and a private infinity pool overlooking the Aegean Sea.", address: "Odos Akti Kounoupi 17, Kranidi 213 00, Greece", price: "2500")
palace1.user = user1
Rails.root.join("app/assets/images/seeds/palace_1").children.sort.each do |image_path|
  file = File.open(image_path)
  palace1.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end

palace1.save!

palace2 = Palace.new(name: "Athena's Azure Haven", description: "Escape to this authentic Greek palace with whitewashed walls, azure domes, and sprawling terraces. Experience timeless elegance amid olive groves and sea breezes.", address: "Eparchiaki Odos Firon-Ormou Perissis, Oia 847 02, Santorini, Greece", price: "10500")
palace2.user = user1
Rails.root.join("app/assets/images/seeds/palace_2").children.sort.each do |image_path|
  file = File.open(image_path)
  palace2.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace2.save!


palace3 = Palace.new(name: "Helios Grand Estate", description: "Ancient splendor meets modern luxury in this palatial Greek villa, featuring mosaic floors, ornate fountains, and panoramic views of the crystal-clear coastline.", address: "Eparchiaki Odos Volissos, Pyrgi 821 02, Chios, Greece", price: "6500")
palace3.user = user1
Rails.root.join("app/assets/images/seeds/palace_3").children.sort.each do |image_path|
  file = File.open(image_path)
  palace3.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace3.save!

palace4 = Palace.new(name: "The Imperial Olympus", description: "This majestic Greek retreat boasts classical architecture, lush gardens with native cypress trees, and stunning seaside balconies perfect for sunset cocktails.", address: "Odos Megalochori 24, Kato Korakiana 490 83, Corfu, Greece", price: "9500")
palace4.user = user1
Rails.root.join("app/assets/images/seeds/palace_4").children.sort.each do |image_path|
  file = File.open(image_path)
  palace4.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end

palace4.save!

palace5 = Palace.new(name: "Apollo's Citrus Palace", description: "Nestled among fragrant citrus groves, this opulent palace offers columned walkways, a private beach, and interiors adorned with traditional Greek artistry.", address: "Leoforos Posidonos 38, Vouliagmeni 166 71, Athens, Greece", price: "4256")
palace5.user = user1
Rails.root.join("app/assets/images/seeds/palace_5").children.sort.each do |image_path|
  file = File.open(image_path)
  palace5.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end

palace5.save!

palace6 = Palace.new(name: "The Aristocratic Aegean", description: "Discover regal living in this magnificent Greek palace, complete with cobblestone courtyards, arched doorways, and a grand terrace overlooking the shimmering sea.", address: "Odos Chora 45, Patmos 855 00, Greece", price: "12500")
palace6.user = user1
Rails.root.join("app/assets/images/seeds/palace_6").children.sort.each do |image_path|
  file = File.open(image_path)
  palace6.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end

palace6.save!

palace7 = Palace.new(name: "Dionysus Royal Vineyard", description: "Luxuriate in this exclusive Greek palace featuring hand-painted ceilings, marble bathrooms, and a private vineyard with breathtaking views of the Ionian Sea.", address: "Eparchiaki Odos Argassi 11, Vasilikos 291 00, Zakynthos, Greece", price: "7800")
palace7.user = user1
Rails.root.join("app/assets/images/seeds/palace_7").children.sort.each do |image_path|
  file = File.open(image_path)
  palace7.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end

palace7.save!

palace8 = Palace.new(name: "Acropolis Majesty", description: "This stately Greek palace combines classical elegance with modern amenities, offering a private amphitheater, olive groves, and unparalleled Mediterranean vistas.", address: "Odos Akrotiri 72, Akrotiri 847 00, Santorini, Greece", price: "1900")
palace8.user = user1
Rails.root.join("app/assets/images/seeds/palace_8").children.sort.each do |image_path|
  file = File.open(image_path)
  palace8.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end

palace8.save!

puts "Palais du user1 done, création des palais de user2"

palace9 = Palace.new(name: "Château de Lumière", description: "This magnificent Parisian mansion boasts ornate Belle Époque moldings, a private courtyard garden, and floor-to-ceiling windows overlooking the Eiffel Tower.", address: "16 Avenue de New York, 75016 Paris, France", price: "23200")
palace9.user = user2
Rails.root.join("app/assets/images/seeds/palace_9").children.sort.each do |image_path|
  file = File.open(image_path)
  palace9.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace9.save!

palace10 = Palace.new(name: "Le Palais du Marais", description: "Nestled in historic Le Marais, this exquisite townhouse features original herringbone floors, a rooftop terrace, and meticulously restored 17th-century architectural details.", address: "28 Rue des Francs-Bourgeois, 75003 Paris, France", price: "13200")
palace10.user = user2
Rails.root.join("app/assets/images/seeds/palace_10").children.sort.each do |image_path|
  file = File.open(image_path)
  palace10.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace10.save!

palace11 = Palace.new(name: "Maison Royale Saint-Germain", description: "This opulent Saint-Germain residence offers crystal chandeliers, a wood-paneled library, and a private garden oasis in the heart of Paris's intellectual quarter.", address: "7 Rue de l'Université, 75007 Paris, France", price: "7200")
palace11.user = user2
Rails.root.join("app/assets/images/seeds/palace_11").children.sort.each do |image_path|
  file = File.open(image_path)
  palace11.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace11.save!

palace12 = Palace.new(name: "La Résidence Montmartre", description: "Perched on the slopes of Montmartre, this artistic haven features panoramic city views, stained glass windows, and a private wine cellar beneath cobblestone streets.", address: "12 Rue Lepic, 75018 Paris, France", price: "8400")
palace12.user = user2
Rails.root.join("app/assets/images/seeds/palace_12").children.sort.each do |image_path|
  file = File.open(image_path)
  palace12.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace12.save!

palace13 = Palace.new(name: "Hôtel Particulier Trocadéro", description: "This distinguished Trocadéro residence offers marble fireplaces, a grand spiral staircase, and expansive entertaining spaces overlooking manicured Parisian gardens.", address: "9 Place du Trocadéro, 75016 Paris, France", price: "5200")
palace13.user = user2
Rails.root.join("app/assets/images/seeds/palace_13").children.sort.each do |image_path|
  file = File.open(image_path)
  palace13.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace13.save!

palace14 = Palace.new(name: "Villa Parisienne Étoile", description: "Situated near Arc de Triomphe, this luxurious villa combines Haussmanian grandeur with modern amenities, featuring a private elevator and chef's kitchen.", address: "25 Avenue Foch, 75116 Paris, France", price: "3999")
palace14.user = user2
Rails.root.join("app/assets/images/seeds/palace_14").children.sort.each do |image_path|
  file = File.open(image_path)
  palace14.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace14.save!

palace15 = Palace.new(name: "Le Jardin Secret", description: "Hidden in the Golden Triangle, this exclusive residence boasts hand-painted ceilings, a private hammam, and a secluded garden sanctuary steps from Avenue Montaigne.", address: "18 Rue Bayard, 75008 Paris, France", price: "9200")
palace15.user = user2
Rails.root.join("app/assets/images/seeds/palace_15").children.sort.each do |image_path|
  file = File.open(image_path)
  palace15.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace15.save!

palace16 = Palace.new(name: "L'Élysée Privé", description: "This presidential-style mansion near Élysée Palace features gilded moldings, a grand ballroom, and a rooftop conservatory overlooking Paris's iconic skyline.", address: "23 Rue du Faubourg Saint-Honoré, 75008 Paris, France", price: "4673")
palace16.user = user2
Rails.root.join("app/assets/images/seeds/palace_16").children.sort.each do |image_path|
  file = File.open(image_path)
  palace16.photos.attach(io: file, filename: "palace-image.jpg", content_type: "image/jpg")
end
palace16.save!

puts "les palaces et les photos sont crées"

puts "les bookings sont crées"
Booking.create(user: user2, palace: palace1, begin_date: Date.current, end_date: Date.current + 30.days)
Booking.create(user: user2, palace: palace2, begin_date: Date.current, end_date: Date.current + 30.days)

puts "Done"
