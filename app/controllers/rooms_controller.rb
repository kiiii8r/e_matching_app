class RoomsController < ApplicationController
  def show
    @message = Message.new
    @room = Room.find(params[:user_id])
    @messages = @room.messages.includes(:user)
  end

  def create
    if @room = Room.create
      @room_user = RoomUser.create
      rooms_path(room_id)
    else
      rende user_path
    end
end
