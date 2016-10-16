class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(data)
    ActionCable.server.broadcast "chat_#{data['chat_id']}_channel",
                                 message: data['content'], chat_id: data['chat_id'],
                                 user: User.find(data['user_id']).name
  end
end
