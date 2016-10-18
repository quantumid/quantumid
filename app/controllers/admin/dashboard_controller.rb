class Admin::DashboardController < ApplicationController
  before_action :authorize

  def index
    @channels = Channel.all
  end

end
