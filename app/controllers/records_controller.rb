class RecordsController < ApplicationController
  def new
    @record = Record.new
  end

  def create
    @doctor = Doctor.find(params[:doctor_id])
    @record = Record.new(user_id: current_user.id, doctor_id: @doctor.id)
    if @record.save
      flash.now[:notice] = "Save successful."
      render 'new'
    else
      flash.now[:danger] = "Doctor could not be saved to profile."
      render 'new'
    end
  end

  def destroy
    @doctor = Doctor.find(params[:doctor_id])
    if current_user.doctors.delete(@doctor)
      flash.now[:notice] = "Doctor removed."
      render 'destroy'
    end
  end
end
