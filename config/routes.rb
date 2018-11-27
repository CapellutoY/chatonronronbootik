Rails.application.routes.draw do
  resources :carts
  devise_for :users
  root "home#index"
end
