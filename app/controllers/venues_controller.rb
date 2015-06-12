class SchedulesController < ApplicationController

   def index
    @schedules = Venue.all
  end

  def show
    @schedule = Venue.where(id: params[:id])
  end
  
end