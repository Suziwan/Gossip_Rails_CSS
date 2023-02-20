class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    puts params[:session][:email]

    if user && user.authenticate(params[:session][:password])
      puts 'LOGGED IN'
      log_in(user)
      flash[:success] = 'You are connected'
      redirect_to root_path
    else
      puts 'NOT LOGGED IN'
      flash[:alert] = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy
    puts 'DESTROYING SESSION'
    session.delete(:user_id)
    redirect_to root_path
  end
end
