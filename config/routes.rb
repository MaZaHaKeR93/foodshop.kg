Rails.application.routes.draw do

  root 'establishments#index'
  ActiveAdmin.routes(self)
  devise_for :users
  delete 'line_items/destroy_all' => 'line_items#destroy_all'
  resources :carts
  resources :establishments, only: [:show, :index]
  resources :dishes, only: [:show, :index]
  resources :line_items

end
