Rails.application.routes.draw do
root 'sessions#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

 resources :clients, except: [:edit, :update, :destroy]
 resources :staffs, only: [:index, :show]
 resources :appointments, only: [:new, :create, :edit, :update]

 resources :services do 
    resources :appointments, except: [:new, :create, :edit, :update]
  end

end

