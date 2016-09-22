module MyVimeo
  class Video < MyVimeo::Base
    def type
      'videos'
    end

    def model_type
      ActiveRecord::Video
    end
  end
end
