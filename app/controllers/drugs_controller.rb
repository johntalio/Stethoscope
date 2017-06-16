class DrugsController < ApplicationController
  layout false

  def index
    @drugs = Drug.all
    if params[:search]
      @drugs = Drug.search(params[:search]).order("created_at DESC")
    else
      @drugs = Drug.all.order("created_at DESC")
    end
  end

  def drugs_search
  end
end
