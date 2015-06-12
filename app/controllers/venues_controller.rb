class VenuesController < ApplicationController

   def index
    @venues = Venue.all
  end

  def show
    @venue= Venue.where(id: params[:id])
  end
  
end