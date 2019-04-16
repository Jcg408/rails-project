class SessionsController < ApplicationController
  def new
    
  end

  def create 
    @client = Client.find_by(email: params[:email])
    if @client && @client.authenticate(params[:password])
      @client.save
      session[:client] = @client
      redirect_to 'client_path(@client)'
    else
      redirect_to login_path
    end
  end
  def destroy
    session.delete :email
  end
end
