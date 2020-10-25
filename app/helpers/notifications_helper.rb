module NotificationsHelper

  def visiter_user(notification)
    @visiter = User.find(notification.visiter)
  end

  def notification_form(notification, visiter)
    if notification.relationship_id.present?
      tag.a(visiter.nickname, href:user_path(visiter.id)) + "があなたをフォローしました"
    elsif notification.message.present?
      @room_number = RoomUser.where(user_id: current_user.id).pluck(:room_id) & RoomUser.where(user_id: visiter.id).pluck(:room_id)
       tag.a(visiter.nickname, href:room_path(@room_number))+ "があなたにメッセージを送りました"
    end
  end

  def notice_count
    @notice_count = Notification.where(user_id: current_user.id).count
  end

end
