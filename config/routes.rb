Rails.application.routes.draw do
  get '*path', to: 'catches#new'
end
