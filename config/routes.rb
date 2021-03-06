Rails.application.routes.draw do
  root 'catcher#catch'

  namespace :admin do
    resources :locations, only: [:index, :destroy]
  end

  get '*path', to: 'catcher#catch'
end
