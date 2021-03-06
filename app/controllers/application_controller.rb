class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_current_user

  def set_current_user
 	if consultant_signed_in? 
 		@current_user = current_consultant
 	elsif corporate_signed_in? 
 		@current_user = current_corporate
  	end
  end
  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
