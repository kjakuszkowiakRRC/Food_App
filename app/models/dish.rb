class Dish < ApplicationRecord
    has_many :restaurant_dishes
    has_many :restaurants, through: :restaurant_dishes

    validates :name, presence: true
    validates :price, presence: true
end
