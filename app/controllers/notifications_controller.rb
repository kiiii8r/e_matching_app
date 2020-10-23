class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(user_id: current_user.id)
  end

  def create
  end

  private

  def visiter_user
    @visiter = User.find(@notifications.visiter)
  end

end
