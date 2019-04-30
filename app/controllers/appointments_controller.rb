class AppointmentsController < ApplicationController
  before_action :set_appt, only: [:edit, :show, :update, :destroy]

  def index
    @appointments = Appointment.all
  end
  
  def new
    @appointment = Appointment.new
  end

  def create
    
    if current_user 
      
      @appointment = current_user.appointments.new(appt_params)
      if @appointment.save
        redirect_to service_appointment_path(@appointment.service, @appointment)
      else 
       render :new
      end
    else
      render :new
    end
  end

  def edit
  end

  def update
   @appointment.update(appt_params)
   if @appointment.save
   redirect_to service_appointment_path(@appointment.service, @appointment)
   else
    flash[:notice] = 'Please check your entries'
    render :edit
   end
  end

  def show
  end

  def destroy
    @appointment.delete
    flash[:notice] = "Appointment Cancelled."
    redirect_to client_path
  end

  private

  def set_appt
    @appointment = Appointment.find(params[:id])
  end
  
  def appt_params
    params.require(:appointment).permit(:date, :time, :staff_id, :service_id)
  end

end
