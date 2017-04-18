class CatchesController < ApplicationController
  def new
    render file: "#{Rails.root}/public/404", layout: false, status: 404
  end
end
