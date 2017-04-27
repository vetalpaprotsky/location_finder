module Admin
  class AdminController < ActionController::Base
    protect_from_forgery with: :exception
    layout 'admin'
  end
end
