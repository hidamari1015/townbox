class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tweet = Tweet.includes(:user)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to action: :index
    else
      render :new
    end
  end


  private

  def tweet_params
    params.require(:tweet).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end