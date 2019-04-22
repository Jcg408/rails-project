class StaffsController < ApplicationController
  def new
    @staff = Staff.new
  end

  def index
    @staff = Staff.all
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def edit
  end

  private

  def staff_params
    params.require(:staff).permit(:name)
  end

end
