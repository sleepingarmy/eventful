class DatesController < ApplicationController
  
  def index
    @dates = Date.all
  end

  def show
    @date = Date.where(id: params[:id])
  end

end