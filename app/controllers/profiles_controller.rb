class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:image, :prefecture_id, :introduction, :hobby, :target, :language1_id, :language2_id, :language3_id, :other_language, :role_id, :pros, :defect).merge(user_id: current_user.id)
  end

  def set_profile
    @profile = Profile.find(current_user.id)
  end
end