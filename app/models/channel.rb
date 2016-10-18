class Channel < ApplicationRecord
  validates :name, presence: true
  validates :description, length: { maximum: 140 }
  has_many :videos

  def video_count
    videos.length
  end

end
