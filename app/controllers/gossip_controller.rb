class GossipController < ApplicationController
  def home
    @gossips = Gossip.all
    @users = User.all
  end

  def show
    @gossip = Gossip.find(params[:id].to_i)
    @author = User.find(@gossip.user_id)
  end

  def team
  end

  def contact
  end

  def welcome
    @user_name = params[:user_name]&.capitalize
  end
end
