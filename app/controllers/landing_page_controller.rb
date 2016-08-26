class LandingPageController < ApplicationController
	skip_before_action :authenticate_user!
	def index
		if user_signed_in?
	      @articles = Article.joins(:user).where(author: current_user.id).order('created_at DESC')
	    else
	      @articles = Article.joins(:user).order('created_at DESC')
	    end
	end
end
