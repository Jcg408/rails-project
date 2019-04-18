Rails.application.routes.draw do
root 'sessions#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  

 resources :clients
 resources :staffs
 resources :services
 
resources :appointments

end

