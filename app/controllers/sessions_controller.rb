class SessionsController < ApplicationController
  def new
    
  end

  def create 
    client = Client.find_by_email(params[:email])
    if client && client.authenticate(params[:password])
      session[:user_id] = client.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  
  end

  def destroy
    session.delete :user_id
    redirect_to '/login'
  end
end
