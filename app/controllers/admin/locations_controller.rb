module Admin
  class LocationsController < AdminController
    def index
      @locations = Location.all

      render 'admin/locations/index'
    end

    def show
      @marker = { lat: location.latitude, lng: location.longitude }

      render 'admin/locations/show'
    end

    def destroy
      location.destroy

      redirect_to admin_locations_path
    end

    private

    def location
      @location ||= Location.find params[:id]
    end
  end
end
