class UsersController < ApplicationController
  before_action :search_product, only: [:index, :search]

  def index
    @users = User.all.order('created_at DESC')
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

  def search_product
    @p = User.ransack(params[:q])  # 検索オブジェクトを生成
  end
end
