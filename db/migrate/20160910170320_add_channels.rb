class AddChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.string :name, null: false
      t.string :description
      t.bigint :vimeo_id, null: false

      t.timestamps
    end
  end
end
