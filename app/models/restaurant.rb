class Restaurant < ApplicationRecord
    has_many :restaurant_locations
    has_many :locations, through: :restaurant_locations

    validates :name, presence: true
    validates :cuisine, presence: true
end
