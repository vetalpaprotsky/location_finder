module Admin
  class AdminController < ActionController::Base
    http_basic_authenticate_with(
      name: ENV['HTTP_BASIC_AUTH_USER'],
      password: ENV['HTTP_BASIC_AUTH_PASSWORD']
    )
    protect_from_forgery with: :exception
    layout 'admin'
  end
end
