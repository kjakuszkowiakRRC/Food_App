class LocationsController < ApplicationController
    def index
      @locations = Location.all
    end

    def show
      @location = Location.find(params[:id])
    end

    def search
      wildcard_search = "%#{params[:keywords]}%"
      @locations = Location.where("city LIKE ?", wildcard_search)
    end
end
