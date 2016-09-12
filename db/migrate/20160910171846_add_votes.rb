class AddVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to :video
      t.boolean :upvote, null: false

      t.timestamps
    end
  end
end
