class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.where(id: params[:id])
  end

end