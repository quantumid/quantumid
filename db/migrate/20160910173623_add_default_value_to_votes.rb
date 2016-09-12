class AddDefaultValueToVotes < ActiveRecord::Migration[5.0]
  def change
    change_column :votes, :upvote, :boolean, default: true
  end
end
