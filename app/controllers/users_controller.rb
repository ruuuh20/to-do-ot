require 'pry'

class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to activities_path
    else
      # binding.pry
      render :new
    end

  end

  private
    def user_params
      params.require(:user).permit(:name, :password)
    end

end
