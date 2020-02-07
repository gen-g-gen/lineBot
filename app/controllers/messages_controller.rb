class MessagesController < ApplicationController
  protect_from_forgery
  before_action :set_group

  def index
    
    @message = Message.new
    @messages = @group.messages.includes(:user)
  end

  def create
    
    @message = @group.messages.new(message_params)
    @message.save
    @messages = @group.messages.includes(:user)
    respond_to do |format|
      format.json { render json: @message}
      format.html { redirect_to :root }
    end
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id, group_id: params[:group_id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

end
