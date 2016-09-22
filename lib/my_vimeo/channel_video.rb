module MyVimeo
  class ChannelVideo < MyVimeo::Video
    def initialize(channel_id, video_id)
      @channel_id = channel_id
      @video_id = video_id
      @token = new_token
      @name = name
      @description = description
    end

    def path
      "/#{type}/#{@channel_id}/videos/#{@video_id}"
    end

    def model_type
      ActiveRecord::Video
    end

  end
end
