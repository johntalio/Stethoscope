class PrescriptionsController < ApplicationController
  def new
    @prescription = Prescription.new
  end

  def create
    @drug = Drug.find(params[:drug_id])
    @prescription = Prescription.new(user_id: current_user.id, drug_id: @drug.id)
    if @prescription.save
      flash.now[:notice] = "Save successful."
      render 'new'
    else
      flash.now[:danger] = "Drug could not be saved to profile."
      render 'new'
    end
  end

  def destroy
    @drug = Drug.find(params[:drug_id])
    if current_user.drugs.delete(@drug)
      flash.now[:notice] = "Drug removed."
      render 'destroy'
    end
  end
end
