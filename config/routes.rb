Rails.application.routes.draw do
  get 'clients/new'
  get 'clients/index'
  get 'clients/show'
  get 'clients/edit'
  get 'staffs/new'
  get 'staffs/index'
  get 'staffs/show'
  get 'staffs/edit'
  get 'sessions/welcome'
  get 'sessions/new'
 root 'sessions#welcome'

 resources :clients, :staffs
 
end
