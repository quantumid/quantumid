class Vote < ApplicationRecord
  validates :upvote, presence: true

  belongs_to :video
end
