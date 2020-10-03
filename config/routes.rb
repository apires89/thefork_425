Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"
  # #new has to be before show because it will think its looking for an id called new
  # get "restaurants/new", to: "restaurants#new"
  # get "restaurants/:id", to: "restaurants#show", as: "restaurant"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id/edit", to: "restaurants#edit", as: "edit"

  # patch "restaurants/:id", to: "restaurants#update"

  # delete "restaurants/:id", to: "restaurants#destroy"

  #resources :restaurants, only: [:show,:new,:create]

  resources :restaurants
end


