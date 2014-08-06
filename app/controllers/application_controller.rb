class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  force_ssl
  
  # def ensure_role( role )
  def ensure_admin_role
    role = :admin

    if !!current_user && current_user.has_role?( role )
      return true
    else
      flash.alert = "Unauthorized action attempted."
      redirect_to root_url and return
    end
  end
  
  private
  def current_user
    @current_user ||= User.find( session[:user_id] ) if session[:user_id]
  end
  helper_method :current_user
end
