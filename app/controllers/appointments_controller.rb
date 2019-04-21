class AppointmentsController < ApplicationController
  
  def index
    if params[:service_id]
      @appointments = Service.find(params[:service_id]).appointments
    else
      @appointments = Appointment.all
    end
  end
  
  def new
    @appointment = Appointment.new
    @service = Service.new
  end

  def create
    @appointment = Appointment.new(appt_params)
    if @appointment.save
      redirect_to 'client_path(@client)'
    else
      redirect_to '/'
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private
  
  def appt_params
    params.require(:appointment).permit(:datetime, :service_id)
  end

end
