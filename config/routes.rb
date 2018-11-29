Rails.application.routes.draw do
  post 'order/create', to: 'order#create'
  devise_for :users
  root "home#index"
  resources :carts
  get '/mycart', to: 'carts#show'
  resources :items
  resources :charges
  get '/myorders', to: 'order#show'
end
