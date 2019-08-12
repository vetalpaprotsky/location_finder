module Admin
  class LocationsController < AdminController
    def index
      @locations = Location.all

      render 'admin/locations/index'
    end

    def destroy
      Location.find(params[:id]).destroy

      redirect_to admin_locations_path
    end
  end
end
