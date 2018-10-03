Rails.application.routes.draw do
  root 'products#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :products do
    resource :vote, only: [:create,:destroy]
    resources :comments, only: [:create]
  end

end
