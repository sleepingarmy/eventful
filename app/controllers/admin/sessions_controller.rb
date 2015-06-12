class Admin::SessionsController < ApplicationController
  
	def new
	end

	def create
		@admin = Admin.where(username: params[:username]).first
		if @admin.present? && @admin.authenticate(params[:password])
			session[:admin_id] = @admin.id
			redirect_to admin_path
			flash[:notice] = "Welcome, admin #{@admin.username}."
		else
			flash[:alert] = "Admins: please login."
			render :new
		end
	end

  def destroy
    session[:user_id] = nil
    redirect_to venues_path
  end

end