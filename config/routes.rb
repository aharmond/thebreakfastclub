Rails.application.routes.draw do
  root "trips#index"
  devise_for :users

  resources :trips do
    resources :locations
  end

  resources :locations do
    resources :addresses
  end

  post '/trips/:trip_id/locations', to: "locations#create", as: "create_location"
  get '/random', to: "trips#random", as: "random"
end
