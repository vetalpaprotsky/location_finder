module Admin
  class LocationsController < AdminController
    def index
      @locations = Location.all

      render 'admin/locations/index'
    end

    def show
      @location = Location.find params[:id]
      @marker = { lat: @location.latitude, lng: @location.longitude }

      render 'admin/locations/show'
    end
  end
end
