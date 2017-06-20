class DrugsController < ApplicationController
  def show
    @drug = Drug.find(params[:id])
  end

  def index
    @drugs = Drug.all
    if params[:search]
      @drugs = Drug.search(params[:search].upcase).order("created_at DESC")
    else
      @drugs = Drug.all.order("created_at DESC")
    end
  end
end
