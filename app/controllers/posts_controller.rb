class PostsController < ApplicationController
  def index
    @posts = Post.order(:website_id).page params[:page]
  end
end
