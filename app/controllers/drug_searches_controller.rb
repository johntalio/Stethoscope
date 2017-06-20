class DrugSearchesController < ApplicationController
  layout false

  def search
    @drugs = Drug.all
    if params[:search]
      @drugs = Drug.search(params[:search]).order("created_at DESC")
    else
      @drugs = Drug.all.order("created_at DESC")
    end
  end
end
