class MessagesController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      Notification.create(notice_params)
      redirect_to room_path(@room, partner_id: params[:message][:partner_id])
    else
      @messages = @room.messages.includes(:user)
      render room_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:message, :image).merge(user_id: current_user.id)
  end

  def notice_params
    params.require(visiter: current_user.id, visited: params[:partner_id], message_id: @message.id)
end
