class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :gender, :password, :password_confirmation) }
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :gender, :password, :password_confirmation, :current_password) }
  end 

  def after_sign_in_path_for(resource)
     request.env['omniauth.origin'] || stored_location_for(resource) || articles_path
    # if request.env['omniauth.origin'].nil?
    #   request.env['omniauth.origin'] || stored_location_for(resource) || articles_path
    # else
    #   articles_path
    # end
  end

end
