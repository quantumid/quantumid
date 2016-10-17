class UpdateChannelJob < ApplicationJob
  queue_as :default

  def perform(id)
    v = vimeo_channel(id)
    s = server_channel(id)

  end

  private

end
