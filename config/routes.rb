Rails.application.routes.draw do
  resources :types
  resources :jobs
  resources :roles
  resources :users
  root to: 'visitors#index'

  #get 'signup' => 'users#new'
  #resources :sessions, only: [:new, :create, :destroy]

  # post 'employment/'
  # get 'employment/new' => 'employment#new', as: :login
  # delete 'employment/delete' => 'employment#destroy', as: :logout

  # get    'login'   => 'sessions#new'
  # post   'login'   => 'sessions#create'
  # delete 'logout'  => 'sessions#destroy'

  get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new'=> 'sessions#create'
  delete 'visitors/index' => 'sessions#destroy', as: :logout
  get 'users/new' => 'users#new', as: :signup
  post 'users/new' => 'users#new'
end
