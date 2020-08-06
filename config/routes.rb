Rails.application.routes.draw do
  resources :listings
  get '/listings/dashboard/:id', to: 'listings#dashboard', as: 'listings_dashboard'
  get '/products/search', to: 'products#search', as: 'search_products'
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  resources :products

  root to: "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
