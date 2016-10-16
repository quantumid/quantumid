class ChannelsController < ApplicationController
  def index
    @all_channels = Channel.all
    @initial_video_id = nil
    first_channel = @all_channels.first

    if first_channel
      @initial_video_id = first_channel.videos.first.vimeo_id
    end

    @primary_chat = Chat.find(1)
  end
end
