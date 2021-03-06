Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update", as: :update_task
  delete 'tasks/:id', to: "tasks#destroy", as: :delete_task

  get "tasks/:id/update", to: "tasks#updatecomp", as: :updatecomp_task
end
