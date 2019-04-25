Rails.application.routes.draw do

  root 'sessions#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  # route added for staff admin scope methods - eventually will build out staff and admin section.
  get '/admin' => 'staffs#admin'

  # omniauth/facebook route
  get '/auth/facebook/callback' => 'sessions#omniauth_create'

 resources :clients, except: [:edit, :update, :destroy]
 resources :staffs, only: [:index, :show]
 resources :appointments, only: [:new, :create, :edit, :update]

 resources :services do 
    resources :appointments, except: [:new, :create, :edit, :update]
  end

end

