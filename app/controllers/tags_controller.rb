class TagsController < ApplicationController
	skip_before_action :authenticate_user!
  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @articles = Article.tagged_with(@tag.name).page(params[:page]).per(10)
  end
end