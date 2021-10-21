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

restaurant = Restaurant.create(name: "KFT",
                               cuisine: "Fried Turkey")

location = Location.create(city: "Winnipeg",
                           province: "Manitoba",
                           country: "Canada")

if restaurant&.valid? && location&.valid?
    RestaurantLocation.create(restaurant: restaurant, location: location, address: "123 beet street")
end