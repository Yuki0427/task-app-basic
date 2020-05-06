Rails.application.routes.draw do
  get 'tasks/index'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  post 'tasks/create', to: 'tasks#create'
  
  resources :users
  resources :tasks
end
