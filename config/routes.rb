Rails.application.routes.draw do

  devise_for :users
  root 'establishments#index'
  delete 'line_items/destroy_all' => 'line_items#destroy_all'
  resources :carts
  resources :establishments, only: [:show, :index]
  resources :dishes, only: [:show, :index]
  resources :line_items

end
