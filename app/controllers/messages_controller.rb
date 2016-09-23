class MessagesController < ApplicationController
  def index
    chat = Chat.find(params[:chat])
    @messages = chat.messages.first(20)
  end

  def new
    Message.new
  end

  def create
    message = Message.new(new_message_params)
    message.user = current_user
  end

  private

  def new_message_params
    params.require(:message).permit(:content)
  end

end
