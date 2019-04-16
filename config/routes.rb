Rails.application.routes.draw do
  get 'appointments/new'
  root   'static#home'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

 resources :clients, :staffs
 
end
