class RemoveVimeoIdFromChannelsAndVideos < ActiveRecord::Migration[5.0]
  def change
    remove_column :channels, :vimeo_id
    remove_column :videos, :vimeo_id
  end
end
