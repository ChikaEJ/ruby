Rails.application.routes.draw do

  root 'tasks#index'

  resources :tasks do
    member do
      get "pending"
      get "in_progress"
      get "canceled"
      get "complete"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
