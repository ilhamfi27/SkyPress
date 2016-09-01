class UserProfileController < ApplicationController
	skip_before_action :authenticate_user!
	def index
		@user_profile = User.find(params[:id])
		@articles = Article.joins(:user).where(user_id: current_user.id).order('created_at DESC').page(params[:page]).per(10)
	end
end
