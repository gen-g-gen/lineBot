class MessagesController < ApplicationController
  protect_from_forgery

  def index
    @group = Group.find(params[:group_id])
    @message = Message.new
    
  end

  def create
    @message = @group.messages.new(message_params)
    @message.save
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id, group_id: params[:group_id])
  end
end
