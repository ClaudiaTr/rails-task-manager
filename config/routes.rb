Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read all tasks
  get "tasks", to: "tasks#index"
  # create a task
  get "tasks/new", to: "tasks#new" # display form
  post "tasks", to: "tasks#create" # submit new task
  # display one task
  get "tasks/:id", to: "tasks#show", as: "task"
  delete "tasks/:id", to: "tasks#destroy"
  # edit a task
  get "tasks/:id/edit", to: "tasks#edit", as: "edit" # display form
  patch "tasks/:id", to: "tasks#update" # submit update
  # delete a task
end
