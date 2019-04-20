Rails.application.routes.draw do
root 'sessions#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

 resources :clients
 resources :staffs 
 
 resources :services do 
    resources :appointments
  end

end

