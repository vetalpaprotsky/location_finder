class CatcherController < ApplicationController
  def catch
    ip = request.remote_ip

    Geocoder.search(ip).each do |result|
      create_location(result.data)
    end

    render file: "#{Rails.root}/public/404", layout: false, status: 404
  end

  private

  def create_location(args)
    Location.create(
      args.slice(
        'ip',
        'city',
        'region_name',
        'region_code',
        'metrocode',
        'zipcode',
        'latitude',
        'longitude',
        'country_name',
        'country_code',
        'time_zone'
      ).merge(user_agent: request.user_agent)
    )
  end
end
