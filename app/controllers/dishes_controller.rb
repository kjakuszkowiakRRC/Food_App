class DishesController < ApplicationController
    def index
      @dishes = Dish.all
    end

    def show
      @dish = Dish.find(params[:id])
    end

    def search
      wildcard_search = "%#{params[:keywords]}%"
      @dishes = Dish.where("name LIKE ?", wildcard_search)
    end
end
