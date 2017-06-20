class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors = Doctor.all
    if params[:search]
      @doctors = Doctor.search(params[:search].upcase_first).order("created_at DESC")
    else
      @doctors = Doctor.all.order("created_at DESC")
    end
  end
end
