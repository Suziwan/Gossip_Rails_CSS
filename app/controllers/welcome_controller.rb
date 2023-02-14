class WelcomeController < ApplicationController
  def welcome
    @user_name = params[:user_name]&.capitalize
  end
end
