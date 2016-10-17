class Admin::DashboardController < ApplicationController
  before_action :authorize

  def index
    @channels = Channel.all
  end

  def update
  end

  def edit
  end

end
