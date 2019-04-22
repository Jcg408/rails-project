class ClientsController < ApplicationController
  
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      session[:client_id] = @client.id
      redirect_to 'login_path'
    else
      render :new
    end
  end

  def show
   @client = current_user
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :password)
  end
end
