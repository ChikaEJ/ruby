Rails.application.routes.draw do

  root 'shops#main'

  resources :shops, only: [:show]
  resources :foods, only: [:show]
  resources :orders do
    resources :order_items
  end

  namespace :admin do
    resources :categories
    resources :shops, except: [:show]
    resources :foods, except: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
