class ServicesController < ApplicationController
    def index
        @services = Service.all
    end
    
    def new
        @service = Service.new
    end
    
    def create
        @service = Service.new(service_params)
        binding.pry
        if @service.save
            redirect_to service_appointment_path(@service)
        else
            redirect_to '/'
        end
    end

    def show
        @service = Service.find(params[:id])
    end
   
    private

    def service_params
        params.require(:service).permit(:name, appointment_attributes: [:email, :password])
    end
end