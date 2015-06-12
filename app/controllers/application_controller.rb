class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_admin
  	@current_admin ||= Admin.where(id: session[:admin_id]).first
  end

  private

  def authenticate_admin
  	unless session[:user_id].present? && current_admin.present?
  		redirect_to(login_path, notice: 'Please login to start Dating.')
  	end
  end
end
