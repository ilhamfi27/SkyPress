class UserProfileController < ApplicationController
	skip_before_action :authenticate_user!
	def index
		@user_profile = User.find(params[:id])
		@articles = Article.joins(:user).where(author: params[:id]).order('created_at DESC')
	end
end
