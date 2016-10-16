class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_#{params['chat_id']}_channel"
    send_topic(params['chat_id'])
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_topic(id)
    topic = Chat.find(id).topic
    ActionCable.server.broadcast "chat_#{id}_channel", topic: topic
  end

  def speak(data)
    Message.create!(content: data['message'],
                    chat_id: data['chat_id'], user: current_user)
  end
end
