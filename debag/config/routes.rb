Rails.application.routes.draw do

  root 'notices#index'
  resources :notices
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end