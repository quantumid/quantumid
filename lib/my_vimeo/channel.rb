module MyVimeo
  class Channel < MyVimeo::Base
    def type
      'channels'
    end

    def persist
      c = Channel.new
      c.vimeo_id = id
      c.description = description
      c.name = name
      c.save
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
