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
        
        render :new
    end
  end
  
  def omniauth_create
      if auth['uid']
      @client = Client.find_or_create_by(uid: auth['uid']) do |client|
        client.name = auth['info']['name']
        client.email = auth['info']['email']
        client.image = auth['info']['image']
        client.password = SecureRandom.hex
      end
    end
      session[:client_id] = @client.id
      redirect_to @client
  end

  def destroy
    session.clear
    redirect_to '/', :flash =>{:notice => 'Log Out Successful'}
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
