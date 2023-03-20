Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'tasks#index'
  # Read all tasks
  get '/tasks', to: 'tasks#index'

  # Create new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Show individual task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'
  patch 'tasks/:id', to: 'tasks#update'
end
