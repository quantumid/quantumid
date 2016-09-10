class Channel < ApplicationRecord
  validates :name, presence: true
  validates :description, length: { maximum: 140 }
  validates :vimeo_id, presence: true

  has_many :videos
end
