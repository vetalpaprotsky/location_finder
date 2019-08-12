class CatcherController < ApplicationController
  def catch
    Location.create!(
      ip: request.remote_ip,
      user_agent: request.user_agent
    )

    render file: "#{Rails.root}/public/404", layout: false, status: 404
  end
end
