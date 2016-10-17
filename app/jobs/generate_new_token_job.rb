class GenerateNewTokenJob < ApplicationJob
  queue_as :low_priority

  def perform(data)
    data.token = MyVimeo::Session.token
    data.save
  end
end
