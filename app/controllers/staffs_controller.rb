class StaffsController < ApplicationController
  def new
    @staff = Staff.new
  end

  def index
    @staffs = Staff.alphabetize
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def edit
  end

  def admin
    @booked = Client.appts_admin
    @appts = Appointment.select(:date, :time, :staff_id, :client_id).order(:date)
  end
private

  def staff_params
    params.require(:staff).permit(:name)
  end

end
