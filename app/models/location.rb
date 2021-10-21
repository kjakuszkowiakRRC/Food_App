class Location < ApplicationRecord
    has_many :restaurant_locations
    has_many :restaurants, through: :restaurant_locations

    validates :city, presence: true
    validates :province, presence: true
    validates :country, presence: true
end
