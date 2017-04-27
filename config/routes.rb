Rails.application.routes.draw do
  namespace :admin do
    resources :locations
  end

  get '*path', to: 'catcher#catch'
end
