class UsersController < ApplicationController
  before_action :allow_cross_domain
  def index
    render json: User.all
  end

  def show
    @user = User.where(id: params[:id]).first
    @tweets = @user.tweets.order(created_at: :desc)
    @tweets.map! do |tweet|
      tweet.created_at = tweet.created_at.strftime("%a %b %e, %g")
    end
    render json: { user: @user, tweets: @tweets }
  end
end
