class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to user_path(@profile.user_id)
    else
      render :edit
    end
  end

end
