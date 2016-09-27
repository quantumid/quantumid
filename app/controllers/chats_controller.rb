class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find[params[:chat_id]]
  end
end
