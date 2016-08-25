class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
     request.env['omniauth.origin'] || stored_location_for(resource) || articles_path
		# if request.env['omniauth.origin'].nil?
    #   request.env['omniauth.origin'] || stored_location_for(resource) || articles_path
    # else
    #   articles_path
    # end
  end
end
