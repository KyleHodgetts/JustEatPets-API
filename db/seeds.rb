# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# OLD SEED

# products = [{name: "Cat Pouch", pet: "cat", price: 24.2},
# 	{name: "Dog Bag", pet: "dog", price: 34.2},
# 	{name: "Llama Food", pet: "llama", price: 12.2},
# 	{name: "Lettuce", pet: "turtle", price: 0.90}]

# products.each do |p|
# 	Product.create(name: p[:name], pet: p[:pet], price: p[:price])
# end

# Restaurant.find_by_name("Jana's Pet Store").products << Product.find_by_name("Cat Pouch")
# Restaurant.find_by_name("Jana's Pet Store").products << Product.find_by_name("Dog Bag")
# Restaurant.find_by_name("Josh's Pet Store").products << Product.find_by_name("Llama Food")
# Restaurant.find_by_name("Josh's Pet Store").products << Product.find_by_name("Lettuce")

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
