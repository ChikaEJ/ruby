Rails.application.routes.draw do

  devise_for :users
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    root 'products#index'

    resources :products, only: [:show]
    resources :categories, only: [:show]
    namespace :admin do
      root 'products#index'
      resources :products, except: [:show]
      resources :categories, except: [:show]
    end
  end
  match "*path", to: redirect("/#{I18n.default_locale}/%{path}"), via: :all
  match "", to: redirect("/#{I18n.default_locale}/"), via: :all
end
