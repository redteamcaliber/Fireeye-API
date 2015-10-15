class UsersController < ApplicationController
  before_action :allow_cross_domain
  def index
    render json: User.all
  end

  def show
    @user = User.where(id: params[:id]).first
    render json: { user: @user, tweets: @user.tweets }
  end
end
