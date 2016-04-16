Rails.application.routes.draw do
  resources :types
  resources :jobs
  resources :roles
  resources :users
  root to: 'visitors#index'

  get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new'=> 'sessions#create'
  delete 'visitors/index' => 'sessions#destroy', as: :logout
  get 'users/new' => 'users#new', as: :signup
  post 'users/new' => 'users#new'

  resources :users do
    get :make_admin, on: :member
  end
  
end
