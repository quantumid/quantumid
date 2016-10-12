class MessagesController < ApplicationController
  after_create_commit { MessageBroadcastJob.perform_later self }
end
