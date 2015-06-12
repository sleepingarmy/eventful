class Admin::SessionsController < ApplicationController

	def new
	end

	def create
		@admin = Admin.where(username: params[:username]).first
		if @admin.present? && @admin.authenticate(params[:password])
			session[:admin_id] = @admin.admin_id
			recirect_to admin_login
			flash[:notice] = "Welcome, admin #{@admin.username}."
		else
			flash[:alert] = "Admins: please login."
			render :new
		end
	end

  def destroy
    session[:user_id] = nill
    redirect_to root_path

end