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
  end

  def create
 
    if current_user
      @appointment = current_user.appointments.create(appt_params)  
      
      redirect_to service_appointment_path(@appointment.service, @appointment)
    else
       redirect_to new_appointment_path
    end
    
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private
  
  def appt_params
    params.require(:appointment).permit(:datetime, :staff_id, :service_id)
  end

end
