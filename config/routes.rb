Rails.application.routes.draw do
  root 'products#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  
  resources :products
  resources :users, only: [:new, :create]
end
