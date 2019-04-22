class AppointmentsController < ApplicationController
  before_action :set_appt, only: [:edit, :show, :destroy]
  
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

  def edit
    
  end

  def update
    @appointment.update(appt_params)
    if @appointment.save
      redirect_to service_appointment_path(@appointment.service, @appointment)
    else
      render :edit
    end
  end

  def show
  
  end

  def destroy
    @appointment.clear
    flash[:notice] = "Artist deleted."
    redirect_to 'clients_path'
  end

  private

  def set_appt
    @appointment = Appointment.find(params[:id])
  end
  
  def appt_params
    params.require(:appointment).permit(:datetime, :staff_id, :service_id)
  end

end
