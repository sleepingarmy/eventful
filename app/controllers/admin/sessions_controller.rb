class Admin::Sessions_Controller.rb < ApplicationController
  
	def new
		
	end

	def create
    @user = User.where(username: params[:username])
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
    else
      flash[:alert] = 'Wrong password or username'
      render :new
	end
	
end