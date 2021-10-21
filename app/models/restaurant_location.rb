class RestaurantLocation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :location

  validates :restaurant, presence: true
  validates :location, presence: true
  validates :address, presence: true
end
