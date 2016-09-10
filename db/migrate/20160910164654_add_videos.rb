class AddVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.string :description
      t.bigint :vimeo_id, null: false
      t.belongs_to :channel, null: false

      t.timestamps
    end
  end
end
