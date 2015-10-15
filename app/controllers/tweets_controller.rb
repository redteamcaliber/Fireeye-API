class TweetsController < ApplicationController
  before_action :allow_cross_domain
  def create
    @tweet = Tweet.create(body: params[:body])
    if @tweet.save
      render json: @tweet
    else

    end
  end
end
