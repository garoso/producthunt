Rails.application.routes.draw do

  resources :products
  resources :users, only: [:new, :create]
  root 'products#index'

end
