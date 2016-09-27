class MessagesController < ApplicationController
  def index
    @chat = Chat.find(params[:chat_id])
    @messages = @chat.messages
  end

  def new
    @chat = Chat.find(params[:chat_id])
    @message = Message.new
  end

  def create
    @message = Message.new(new_message_params)
    @message.user = current_user
    @message.chat = Chat.find(params[:chat_id])
    if @message.save
      redirect_to chat_messages_path(@message.chat)
    else
      render :new
    end
  end

  private

  def new_message_params
    params.require(:message).permit(:content)
  end
end
