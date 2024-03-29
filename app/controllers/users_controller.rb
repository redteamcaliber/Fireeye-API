class UsersController < ApplicationController
  before_action :allow_cross_domain
  def index
    render json: User.all
  end

  def show
    @user = User.where(id: params[:id]).first
    @tweets = @user.tweets.order(created_at: :desc)
    render json: { user: @user, tweets: @tweets }
  end

  def tweets
    @user = User.where(id: params[:user_id]).first
    @tweets = @user.tweets.order(created_at: :desc)
    render json: @tweets
  end
end
