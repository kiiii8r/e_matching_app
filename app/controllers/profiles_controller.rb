class ProfilesController < ApplicationController
  before_action :set_profile, only: [:new, :create, :edit, :update]
  before_action :set_user, only: [:new, :edit]

  def new
    @profile = Profile.new
  end

  def create
    if @profile.create(profile_params)
      radirect_to users_path(@profile.user_id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to user_path(@profile.user_id)
    else
      render :edit
    end
  end

  private

  

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def set_user
    @user = User.find(params[:id])
  end

end
