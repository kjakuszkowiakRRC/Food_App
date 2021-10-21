# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#csv_file_restaurants = Rails.root.join('db/restaurants.csv')
#csv_data = File.read(csv_file_restaurants)

#   restaurants = CSV.parse(csv_data, headers: true)
#restaurants.each do |restaurant|
# 1. restaurant = Restaurant.create(x)

#csv_file_locations = Rails.root.join('db/locations.csv')
#csv_data = File.read(csv_file_locations)
#   locations = CSV.parse(csv_data, headers: true)
#locations.each do |location|
# 2. location = Location.create(x)
# get random number between 1-7
# for loop through each location
# use random number for amount of restaurants at location
# 3. if restaurant&.valid? && location&.valid?
# 4.    RestaurantLocation.create(restaurant: restaurant, location: location, Faker::Address.street_address)

# RestaurantLocation.delete_all
# RestaurantDish.delete_all
# Location.delete_all
# Dish.delete_all
# Restaurant.delete_all

# restaurant = Restaurant.create(name: "Burger Queen",
#                                cuisine: "Borger")

# location = Location.create(city: "Winnipeg",
#                            province: "Manitoba",
#                            country: "Canada")

# if restaurant&.valid? && location&.valid?
#     RestaurantLocation.create(restaurant: restaurant, location: location, address: "123 beet street")
# end

# dish = Dish.create(name: "Big Fried Turducken",
#                            price: 12.56)

# if restaurant&.valid? && dish&.valid?
#     RestaurantDish.create(restaurant: restaurant, dish: dish)
# end

# TableA.all.each do |a_record|
#     (1..7) do
#         table_a = a_record
#         table_b = TableB.order("RANDOM()").first

#         TableATableB.create(
#             table_a: table_a,
#             table_b: table_b
#         )
#     end
# end
for i in 1..10 do
restaurant = Restaurant.create(name: Faker::Restaurant.name,
                               cuisine: Faker::Restaurant.type)

location = Location.create(city: Faker::Address.city,
                           province: Faker::Address.state,
                           country: Faker::Address.country)

if restaurant&.valid? && location&.valid?
    RestaurantLocation.create(
                                restaurant: restaurant,
                                location: location,
                                address: Faker::Address.street_address)
end

    for i in 0..rand(8) do
        dish = Dish.create(name: Faker::Food.dish,
                           price: Faker::Number.decimal(l_digits:2),
                           description: Faker::Food.description)

        RestaurantDish.create(restaurant: restaurant, dish: dish)
    end
end