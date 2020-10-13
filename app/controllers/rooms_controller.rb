class RoomsController < ApplicationController

  def create
    if @room = Room.create(room_params)
      room_path(@room.id)
    else
      render user_path
    end
  end

  def show
    @user = User.find(current_user.id)
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = @room.messages.includes(:user)
  end

  private

  def room_params
    params.require(:room).permit(user_ids:[])
  end
end
