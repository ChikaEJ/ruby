Rails.application.routes.draw do

  root 'tasks#index'
  get 'tasks/new'
  get 'tasks/destroy_all_done'
  get 'tasks/:id' => 'tasks#show', as: 'tasks_show'
  get 'tasks/:id/update' => 'tasks#update', as: 'tasks_update'
  post 'tasks/create'
  delete 'tasks/:id/delete' => 'tasks#destroy', as: 'tasks_delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
