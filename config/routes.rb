Rails.application.routes.draw do
  post 'order/create'
  devise_for :users
  root "home#index"
  resources :carts
  get '/mycart', to: 'carts#show'
  resources :items
  resources :charges
end
