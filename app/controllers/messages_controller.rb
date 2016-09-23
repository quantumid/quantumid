class MessagesController < ApplicationController
  def show
    @chat = Chat.find(params[:id])
    @messages = chat.messages.first(20)
  end

  def new
    Message.new
  end

  def create
    @chat = Chat.find(params[:id])
    @message = Message.new(new_message_params)
    @message.user = current_user
    redirect_to @chat
  end

  private

  def new_message_params
    params.require(:message).permit(:content)
  end

end
