class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @city = City.find(@user.city_id)
    @this_user = User.where(first_name: @user.first_name, last_name: @user.last_name)
    @user_gossips = Gossip.where(user: @this_user)
  end
end
