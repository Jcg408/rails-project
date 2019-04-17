class SessionsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.find_by(name: params[:session][:name])
    if @client && @client.authenticate(params[:session][:password])
        session[:client_id] = @client.id
        redirect_to client_path(@client)
    else
        redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
