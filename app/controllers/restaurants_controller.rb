class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @restaurants = Restaurant.where("name LIKE ?", wildcard_search)
  end
end
