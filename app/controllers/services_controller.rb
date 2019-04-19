class ServicesController < ApplicationController
    def index
        @services = Services.all
    end
    
    def new
        @service = Service.new
    end
    
    def create
        @service = Service.create(service_params)
    end

    def show
        @service = Service.find(params[:id])
    end
   
    private

    def service_params
        params.require(:service).permit(:name)
    end
end