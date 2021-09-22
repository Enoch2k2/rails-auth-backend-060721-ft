Rails.application.routes.draw do
  # resources :users, only: [:create] # create is going to be signup
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/signup', to: 'users#create'
  get '/current-user', to: 'users#get_current_user'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
