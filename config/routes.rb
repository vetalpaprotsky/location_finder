Rails.application.routes.draw do
  namespace :admin do
    resources :locations, only: [:index, :show, :destroy]
  end

  get '*path', to: 'catcher#catch'
end
