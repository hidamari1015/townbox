class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @prefecture = user.prefecture
    @city = user.city
    @tweets = user.tweets
  end
end
