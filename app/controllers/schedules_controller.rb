class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.where(id: params[:id])
  end

end