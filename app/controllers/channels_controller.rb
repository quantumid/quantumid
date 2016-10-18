class ChannelsController < ApplicationController
  def index
    @all_channels = Channel.all
    first_channel = @all_channels.first
    @primary_chat = Chat.find(1)
  end
end
