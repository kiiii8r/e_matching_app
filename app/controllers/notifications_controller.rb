class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(user_id: current_user.id).order(created_at: :desc)
  end

  def create
  end

  private

  def visiter_user
    @visiter = User.find(@notifications.visiter)
  end

end
