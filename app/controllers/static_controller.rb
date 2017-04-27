class StaticController < ApplicationController
  layout false

  def search
    @doctors = Doctor.all
    if params[:search]
      @doctors = Doctor.search(params[:search]).order("created_at DESC")
    else
      @doctors = Doctor.all.order("created_at DESC")
    end
  end
end
