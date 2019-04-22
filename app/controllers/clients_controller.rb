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
      redirect_to 'login_path'
    else
      render :new
    end
  end

  def show
   @client = Client.find_by(id: params[:id])
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :password)
  end
end
