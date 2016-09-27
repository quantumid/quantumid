class MessagesController < ApplicationController
  def index
    @chat = Chat.find(params[:chat_id])
    @messages = @chat.messages
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(new_message_params)
    @message.user = current_user
    if @message.save
      redirect_to @message.chat
    else
      render :new
    end
  end

  private

  def new_message_params
    params.require(:message).permit(:content, :chat_id)
  end
end
