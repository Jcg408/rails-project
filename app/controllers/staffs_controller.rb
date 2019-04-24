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
    @staff_booked = Staff.booked
  end

  private
  

  def staff_params
    params.require(:staff).permit(:name)
  end

end
