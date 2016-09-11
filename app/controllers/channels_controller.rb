class ChannelsController < ApplicationController
  def index
    @all_channels = Channel.all
  end
end
