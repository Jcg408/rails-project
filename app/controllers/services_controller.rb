class ServicesController < ApplicationController
    def index
        @services = Services.all
    
    end
    
    def new
        @service = Service.new(service_params)
    end
    
    def create
    
    
    end

   
    private

    def service_params
        params.require(:service).permit(:name)
    end
end