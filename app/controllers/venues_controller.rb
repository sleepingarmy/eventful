class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new(venue_params)
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to venues_path
    else
      render :new
    end
  end

  def edit
    @venue = Venue.where(id: params[:id])
  end

  def update
    @venue = Venue.where(id: params[:id])
    if @venue.update
      redirec_to venues_path
    else
      render :edit
    end
  end
  
  def show
    @venue = Venue.where(id: params[:id])
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :location)
  end
end