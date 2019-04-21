Rails.application.routes.draw do
root 'sessions#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

 resources :clients
 resources :staffs 
 resources :appointments, only: [:new, :create]

 resources :services do 
    resources :appointments, except: [:new, :create]
  end

end

