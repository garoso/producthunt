Rails.application.routes.draw do
  root 'products#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  
  resources :products
  resources :users, only: [:new, :create]
end
