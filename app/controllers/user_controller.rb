class UserController < ApplicationController

  def index
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

  def show
    @user = User.find(params[:id])
    render json: @user.posts
  end

  private

  def user_params
    params.permit(:username, :bio, :email)
  end


end
