class ServicesController < ApplicationController
    def index
        @services = Service.all
    end
    
    def new
        @service = Service.new
    end
    
    def create
        @service = Service.new(service_params)
        if @service.save
            redirect_to services_path
        else
            redirect_to '/'
        end
    end

    def show
        @service = Service.find(params[:id])
    end
   
    private

    def service_params
        params.require(:service).permit(:name)
    end
end