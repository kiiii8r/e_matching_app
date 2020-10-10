class RoomsController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:user_id])
    @messages = @room.messages.includes(:user)
  end
end
