Rails.application.routes.draw do
  get 'order_items/show'
  get 'order_items/index'
  get 'order_items/new'
  get 'order_items/edit'
  resources :orders
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#index'
end
