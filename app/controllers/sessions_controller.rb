class SessionsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.find_by(email: params[:client][:email])
    if @client && @client.authenticate(params[:client][:password])
        session[:client_id] = @client.id
        redirect_to @client
    else
        redirect_to '/', :flash =>{:notice => 'Invalid Log In. Please try again.'}
    end
  end

  def destroy
    session.clear
    redirect_to '/', :flash =>{:notice => 'Log Out Successful'}
  end
end
