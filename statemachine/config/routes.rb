Rails.application.routes.draw do
  resources :orders do
    member do
      get "pending"
      get "complete"
      get "canceled_by_customer"
      get "in_progress"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
