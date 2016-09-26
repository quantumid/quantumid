class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content, null: false
      t.belongs_to :chat
      t.belongs_to :user
      t.timestamps
    end
  end
end
