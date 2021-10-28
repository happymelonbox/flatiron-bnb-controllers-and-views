Rails.application.routes.draw do
  root to: 'cities#index'

resources :cities
resources :listings
resources :neighborhoods
resources :reservations
resources :reviews
resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
