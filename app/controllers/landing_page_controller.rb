class LandingPageController < ApplicationController
	skip_before_action :authenticate_user!
	def index
		@articles = Article.joins(:user).order('created_at DESC')
	end
end
