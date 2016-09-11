class ChannelsController < ApplicationController
  
  def index
    @all_channels = Channel.all
    first_channel = @all_channels.first

    if first_channel
      @initial_video = first_channel.videos.first.vimeo_id
    else
      @initial_video = nil
    end
  end

end
