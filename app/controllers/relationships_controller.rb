class RelationshipsController < ApplicationController

  def create
    if Relationship.create!(user_set)
      flash[:success] = 'ユーザーをフォローしました'
      redirect_to user_path(params[:follow_id])
    else
      flash.now[:alert] = 'ユーザーのフォローに失敗しました'
      redirect_to users_path
    end
  end

  def destroy
    @relationship = Relationship.find((Relationship.where(user_id: current_user.id).pluck(:id) & Relationship.where(follow_id: params[:follow_id]).pluck(:id))[0])
    if @relationship.destroy
      flash[:success] = 'ユーザーのフォローを解除しました'
      redirect_to user_path(params[:follow_id])
    else
      flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
      redirect_to users_path
    end
  end

  private
  def user_set
    params.permit(:follow_id).merge(user_id: current_user.id)
  end
end
