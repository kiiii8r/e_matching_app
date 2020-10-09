class UsersController < ApplicationController
  def index
    @user = User.all.order('created_at DESC')
  end

  def front
    if user_signed_in?
      redirect_to users_path
    end
  end

  def show
    @user = User.find(params[:id])
    @profile = Profile.find(params[:id])
  end
end
