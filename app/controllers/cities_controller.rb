class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @city_users = User.where(city_id: params[:id])
    @city_gossips = Gossip.where(user: @city_users)
  end
end
