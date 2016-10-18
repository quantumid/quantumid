class Admin::ChannelsController < ChannelsController
  
  def update
    @channel = Channel.find(params[:id])

    if @channel.update_attributes(new_channel_params)
      flash[:notice] = "Channel Updated"
      redirect_to admin_path
    else
      render :admin
    end
  end

  protected

  def new_channel_params
    params.require(:channel).permit(:name, :description, :vimeo_id)
  end

end
