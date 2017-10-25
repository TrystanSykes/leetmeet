Rails.application.routes.draw do

  get '/events/delete/:id', to: 'events#delete'
  resources :events
  get '/users/delete/:id', to: 'users#delete'
  resources :users

  get '/sessions/new', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions/:id', to: 'sessions#destroy'

  get '/api/events', to: 'api/events#index'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
