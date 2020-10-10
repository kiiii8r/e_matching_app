class MessagesController < ApplicationController

  def create
    @room = Room.find(params[:user_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
       @messages = @room.messages.includes(:user)
       render :index
    end
  end

end
