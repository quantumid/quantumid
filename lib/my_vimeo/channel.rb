module MyVimeo
  class Channel < MyVimeo::Base
    def type
      'channels'
    end

    def model_type
      ActiveRecord::Channel
    end

    def channel_info
      response = self.class.get(path, headers: header)
      JSON.parse(response)
    end

    def videos
      response = self.class.get(path + "/videos", headers: header)
      JSON.parse(response)
    end
  end
end
