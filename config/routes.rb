Rails.application.routes.draw do
  resources :types
  resources :jobs
  resources :roles
  resources :users
  root to: 'visitors#index'

  resources :sessions, only: [:new, :create, :destroy]

  # post 'employment/'
  # get 'employment/new' => 'employment#new', as: :login
  # delete 'employment/delete' => 'employment#destroy', as: :logout

  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
end
