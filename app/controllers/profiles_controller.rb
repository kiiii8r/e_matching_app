class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
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

  def profile_params
    params.require(:profile).permit(:image, :prefecture_id, :introduction, :hobby, :target, :language1_id, :language2_id, :language3_id, :other_language, :role_id, :pros, :defect).merge(user_id: current_user.id)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end