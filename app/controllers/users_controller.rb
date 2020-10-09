class UsersController < ApplicationController
  def index
    @users = User.all.order('created_at DESC')
  end

  def front
    redirect_to users_path if user_signed_in?
  end

  def show
    @user = User.find(params[:id])
    @profile = Profile.find(params[:id])
  end
end
