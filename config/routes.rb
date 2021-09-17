Rails.application.routes.draw do
  resources :users, only: %i[new create]
  resources :franchises           #, only: %i[index new edit create update destroy show]
  #get '/franchises', to: 'franchises#index' #localhost/franchises HTTP GET (verb)
  #get '/franchises/new', to: 'franchises#new'
  #get '/franchises/:id/edit', to: 'franchises#edit'
  #post '/franchises', to: 'franchises#create'

  root 'pages#index'
end  
