Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :carts
  get '/mycart', to: 'carts#show'
  resources :items
  resources :charges
  get '/myorders', to: 'order#show'
end
