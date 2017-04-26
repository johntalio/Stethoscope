class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    if params[:search]
      @doctors = Doctor.search(params[:search]).order("created_at DESC")
    else
      @doctors = Doctor.all.order("created_at DESC")
    end
  end

end
