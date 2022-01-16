Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index', as: :index
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:title', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create'
  get 'tasks/:title/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:title', to: 'tasks#update'
  delete 'tasks/:title', to: 'tasks#destroy', as: :destroy
end
