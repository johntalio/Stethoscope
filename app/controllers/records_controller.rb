class RecordsController < ApplicationController
  def new
    @record = Record.new
  end

  def create
    @doctor = Doctor.find(params[:doctor_id])
    @record = Record.new(user_id: current_user.id, doctor_id: @doctor.id)
    if @record.save
      flash.now[:notice] = "Save successful."
      redirect_to @doctor
    else
      flash.now[:danger] = "Doctor could not be saved to profile."
      redirect_to @doctor
    end
  end
end
