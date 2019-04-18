class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    if @appointments.length.zero?
      flash[:alert] = 'You have no appointments. Create one now to get started.'
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appt_params)
    if @appointment.save
      redirect_to '/client/show'
    else
      render :new
  end
  end

  private
  def appt_params
    params.require(:appointment).permit(:date, :time, :client_id, :staff_id, :service_id)
  end
end
