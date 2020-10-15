class UsersController < ApplicationController
  before_action :search_user, only: [:index, :search]

  def index
    @users = User.all.order('created_at DESC')
    set_user_column
    set_profile_column
  end

  def front
    redirect_to users_path if user_signed_in?
  end

  def show
    @user = User.find(params[:id])
    @profile = Profile.find(params[:id])
    @room_number = RoomUser.where(user_id: current_user.id).pluck(:room_id) & RoomUser.where(user_id: @user.id).pluck(:room_id)
  end


  def search
    @results = @p.result.includes(:profile)
  end

  private

  def search_user
    @p = User.ransack(params[:q])
  end

  def set_user_column
    @user_gender = User.select("gender").distinct 
  end

  def set_profile_column
    @profile_role = Profile.select("role_id").distinct

    @profile_language1 = Profile.select("language1_id").distinct
  end
end

(Profile.select("language1_id").map {|item| item.language1_id} + Profile.select("language2_id").map {|item| item.language2_id} + Profile.select("language3_id").map {|item| item.language3_id}).uniq
    @profile_prefecture = Profile.select("prefecture_id").distinct
