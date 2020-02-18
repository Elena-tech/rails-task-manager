Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'
  # read all tasks

  get '/tasks/new', to: 'tasks#new' #display form
  post '/tasks', to: 'tasks#create'
  #create a task

  get '/tasks/:id', to: 'tasks#show', as: :task
  # read a one task

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit #display form
  patch '/tasks/:id', to: 'tasks#update'
  #update a task

  delete 'tasks/:id', to: 'tasks#destroy'
  #delete task by id
end
