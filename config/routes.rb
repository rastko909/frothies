Rails.application.routes.draw do
  resources :vendors
  resources :charges
  resources :order_items
  resources :orders
  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
end
