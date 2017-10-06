Rails.application.routes.draw do

  root 'establishments#index'
  delete 'line_items/destroy_all' => 'line_items#destroy_all'
  resources :carts
  resources :establishments, only: [:show, :index]
  resources :dishes, only: [:show, :index]
  resources :carts
  resources :line_items

  namespace :admin do
    resources :categories
    resources :establishments
    resources :dishes
  end
end
