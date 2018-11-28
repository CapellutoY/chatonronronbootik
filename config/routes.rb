Rails.application.routes.draw do
  post 'order/create'
  devise_for :users
  root "home#index"
  resources :carts
  resources :items
end
