class PostController < ApplicationController

  def posts
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find_by(id: params[:id])
    render json: @post
  end

  def destroy
    @destroyer_of_posts = Post.find(params[:id])
    @destroyer_of_posts.destroy
    render status: 200
  end

  def show_comments_by_post_id
      @comments = Post.find_by(id: [params[:id]]).comments
      render json: @comments
  end


end
