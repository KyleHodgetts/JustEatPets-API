require 'csv'

file = File.read("db/import/pet-food-from-sainsburys.csv"); nil

csv = CSV.parse(file, :headers => true)

csv.each do |row|

  Product.create!(row.to_hash)

end

Product.all.map{ |product| product.name = product.name.split('Only').first.strip; product.save if product.name_changed? }

Product.all.map{ |product| product.name = product.name.split('£').first.strip; product.save if product.name_changed? }

Product.all.map(&:name)

restaurants = [{name: "Jolly Joe's", postcode: "B15 2TT"},
  {name: "Josh's Fridge", postcode: "B15 2TQ"},
  {name: "Yummy Jana's", postcode: "W14 8QW"},
  {name: "Mamma Maria's", postcode: "W14 8HW"} ]

restaurants.each do |r|
	Restaurant.create(name: r[:name], postcode: r[:postcode])
end
