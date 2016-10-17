class UpdateChannelJob < ApplicationJob
  queue_as :default

  def perform

  end

  private

  def pull
  end
end
