class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def new
    @client = Client.new(client_params)
  end

  def create
  
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
