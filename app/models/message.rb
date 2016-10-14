class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat
  validates :content, presence: true
  after_create_commit { MessageBroadcastJob.perform_later self }
end
