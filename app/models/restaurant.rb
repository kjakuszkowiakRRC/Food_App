class Restaurant < ApplicationRecord
    has_many :restaurant_locations
    has_many :restaurant_dishes
    has_many :locations, through: :restaurant_locations
    has_many :dishes, through: :restaurant_dishes

    validates :name, presence: true
    validates :cuisine, presence: true
end
