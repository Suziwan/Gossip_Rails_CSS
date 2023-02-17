class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user_params["city_id"] = user_params["city_id"].to_i
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "Your account was created"
      redirect_to @user
    else
      puts @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @city = City.find(@user.city_id)
    @this_user = User.where(first_name: @user.first_name, last_name: @user.last_name)
    @user_gossips = Gossip.where(user: @this_user)
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city_id, :password)
  end
end
