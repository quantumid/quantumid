class AddChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.string :name, null: false
      t.string :topic
      
      t.timestamps
    end
  end
end
