class RestaurantDish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :dish

  validates :restaurant, presence: true
  validates :dish, presence: true
end
