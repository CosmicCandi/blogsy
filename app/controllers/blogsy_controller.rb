class BlogsyController < ApplicationController

  def posts
    @posts = Post.all
    render json: @posts
  end

  def users
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json:
      @user.errors.full_messages, status: 400
    end
  end

  def show_post_by_id
    @post = Post.find_by(id: params[:id])
    render json: @post
  end

  def show_post_comments_by_post_id
    @comments = Post.find_by(id: [params[:id]]).comments
    render json: @comments
  end

  def show_posts_by_user_id
    @user = User.find(params[:id])
    render json: @user.posts
  end

  def destroy
    @destroyer_of_posts = Post.find(params[:id])
    @destroyer_of_posts.destroy
    render json: {}, status: 200
    end

  private

  def user_params
    params.permit(:username, :bio, :email)
  end

end
