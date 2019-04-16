Rails.application.routes.draw do
  root   'static#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'clients#new'
  post '/clients' => 'clients#create'

 resources :clients, only: [:index, :show, :edit]
 resources :staffs, only: [:index, :new, :show, :edit]
 
 get 'appointments/new'
end

