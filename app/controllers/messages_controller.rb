class MessagesController < ApplicationController
  def index
    @chat = Chat.find(params[:chat_id])
    @messages = @chat.messages.first(20)
  end

  def show
    @chat = Chat.find(params[:chat_id])
    @message = Message.find(params[:message_id])
  end

  def new
    @chat = Chat.find(params[:chat_id])
    @message = Message.new
  end

  def create
    @chat = Chat.find(params[:chat_id])
    @message = Message.new(new_message_params)
    @message.user = current_user
    redirect_to @chat
  end

  private

  def new_message_params
    params.require(:message).permit(:content, :chat_id)
  end

end
