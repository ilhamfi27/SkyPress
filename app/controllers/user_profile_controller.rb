class UserProfileController < ApplicationController
	skip_before_action :authenticate_user!
	def index
		@user_profile = User.find(params[:id])
	end
end
