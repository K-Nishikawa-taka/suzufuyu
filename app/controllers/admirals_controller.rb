class AdmiralsController < ApplicationController
  
  def show
    @admiral = Admiral.find(params[:id])
  end
  
end
