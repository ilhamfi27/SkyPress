class UserProfileController < ApplicationController
	def index
		@user_profile = User.find(current_user.id)
	end
end
