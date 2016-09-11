require 'rails_helper'

RSpec.describe ChannelsController, type: :controller do
  describe 'GET index' do
    it 'renders the index template' do
      get :index

      expect(response).to render_template('index')
    end

    it 'returns all channels' do
      channel_one = create(:channel)
      channel_two = create(:channel)
      get :index

      expect(assigns(:channels)).to eq([channel_two, channel_one])
    end

    it 'returns the first video to be shown' do
      channel = create(:channel)
      video = create(:video)
      video.channel = channel
      get :index

      expect(assigns(:initial_video)).to eq(video.vimeo_id)
    end
  end

end
