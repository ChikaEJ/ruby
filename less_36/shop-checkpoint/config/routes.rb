Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get 'sessions/new'

  root 'products#index'
  get '/signup' => "users#new"
  resources :users
  namespace :admin do
    root 'products#index'
    resources :products
    resources :categories
  end


end
