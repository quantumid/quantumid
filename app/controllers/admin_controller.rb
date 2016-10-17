class AdminController < ApplicationController
  before_action :authorize

  def index
    @channels = []
    Channel.all.each { |c| @channels << c.vimeo_id }
  end

  protected

  def authorize
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
