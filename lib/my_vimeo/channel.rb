module MyVimeo
  class Channel < MyVimeo::Base
    def type
      'channels'
    end

    def model_type
      ActiveRecord::Channel
    end

    def video_count
      videos['data'].length
    end

    def videos
      response = self.class.get(path + "/videos")
      JSON.parse(response)
    end
  end
end
