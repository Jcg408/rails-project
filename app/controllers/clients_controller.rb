class ClientsController < ApplicationController
  

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      session[:client_id] = @client.id
      redirect_to /login
    else
      redirect_to new_client
    end
      
  end

  def show
    
  end

  def edit
  end

  def update
  end

  def destroy
  
  end

  def client_params
    params.require(:client).permit(:name, :email, :password)
  end
end
