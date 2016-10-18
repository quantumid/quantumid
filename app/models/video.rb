class Video < ApplicationRecord
  validates :name, presence: true
  validates :description, length: { maximum: 140 }
  validates :channel_id, presence: true

  belongs_to :channel
end
