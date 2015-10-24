# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{name: "Jana's Pet Store", postcode: "B15 2TT"}, 
	{name: "Josh's Pet Store", postcode: "B15 2TQ"}]

products = [{name: "Cat Pouch", pet: "cat", price: 24.2}, 
	{name: "Dog Bag", pet: "dog", price: 34.2}, 
	{name: "Llama Food", pet: "llama", price: 12.2},
	{name: "Lettuce", pet: "turtle", price: 0.90}]

products.each do |p|
	Product.create(name: p[:name], pet: p[:pet], price: p[:price])
end

restaurants.each do |r|
	Restaurant.create(name: r[:name], postcode: r[:postcode])
end

Restaurant.find_by_name("Jana's Pet Store").products << Product.find_by_name("Cat Pouch")
Restaurant.find_by_name("Jana's Pet Store").products << Product.find_by_name("Dog Bag")
Restaurant.find_by_name("Josh's Pet Store").products << Product.find_by_name("Llama Food")
Restaurant.find_by_name("Josh's Pet Store").products << Product.find_by_name("Lettuce")