class BandsController < ApplicationController
  before_action :find_band, only: [:edit. :update, :show, :destroy]

  def index
    @bands = Band.all
  end

  def show
  end

  def edit
  end

  def create
    @band = Band.new(band_params)
    if@band.save
      redirect_to bands_path
    else
      render :new
    end
  end


  private

  def band_params
    params.require(:band).permit(:name, :genre, :venue_id)
  end

  def find_band
    @band = Band.find(params[:id])
  end

end