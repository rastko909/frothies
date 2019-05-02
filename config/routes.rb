Rails.application.routes.draw do
  # get 'vendors/index'
  # get 'vendors/new'
  # get 'vendors/edit'
  # get 'vendors/show'
  # get 'order_items/show'
  # get 'order_items/index'
  # get 'order_items/new'
  # get 'order_items/edit'
  # trying this 
  resources :vendors
  resources :charges
  resources :order_items
  resources :orders
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
end
