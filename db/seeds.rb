# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'creating restaurants...'
rotiking = { name: "Roti King", address: "40 Doric Way, London NW1 1LH", telephone: 02073672516, category: 'Malaysian' }
dishoom = { name: "Dishoom", address: "7 Boundary St", telephone: 02074203324, category: "Indian" }
macdonalds = { name: "Macdonalds", address: "Strand, London", telephone: 0205431763, category: "Fast"}
inamo = { name: "Inamo", address: "134-136 Wardour St", telephone: 0203452453, category: "Japanese" }
wagamamas = { name: "Wagamamas", address: "Covent Garden, London", telephone: 0205412512, category: 'Japanese' }

[rotiking, dishoom, macdonalds, inamo, wagamamas]. each do |attr|
  restaurant = Restaurant.create!(attr)
  puts "Created #{restaurant.name}"
end
puts "Completed"
