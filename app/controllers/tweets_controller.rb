class TweetsController < ApplicationController
  before_action :allow_cross_domain
  def index
    @tweets = Tweet.where(user_id: params[:user_id])
    render json: @tweets
  end

  def create
    @tweet = Tweet.create(body: params[:body], user_id: params[:user_id])
    if @tweet.save
      render json: @tweet
    else

    end
  end

  def show
    @tweets = Tweet.where(user_id: params[:id])
    render json: @tweets
  end
end
