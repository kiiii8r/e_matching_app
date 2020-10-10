class RoomsController < ApplicationController
  def create
    if @room = Room.create
      @room_user = RoomUser.create
      rooms_path(room_id)
    else
      rende user_path
    end
  end

  def show
    @message = Message.new
    @room = Room.new
    @messages = @room.messages.includes(:user)
    @user = User.find(params[:id])
  end
end
