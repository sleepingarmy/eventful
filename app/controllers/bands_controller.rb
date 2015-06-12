class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
  
  end

end