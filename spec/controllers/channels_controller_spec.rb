require 'rails_helper'

RSpec.describe ChannelsController, type: :controller do
  describe 'GET index' do
    let!(:channel) { create(:channel) }
    let!(:video) { create(:video, channel: channel) }

    it 'renders the index template' do
      get :index

      expect(response).to render_template('index')
    end

    it 'returns all channels' do
      channel_two = create(:channel, name: "Disney Channel")
      get :index

      expect(assigns(:all_channels)).to eq([channel, channel_two])
    end

    it 'returns the first video to be shown' do
      video.channel = channel
      get :index

      expect(assigns(:initial_video_id)).to eq(video.vimeo_id)
    end
  end
end
