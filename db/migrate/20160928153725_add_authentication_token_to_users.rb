class AddAuthenticationTokenToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :authentication_token, :string
    add_index :users, :authentication_token, unique: true
  end

  def down
    remove_column :users, :authentication_token
  end
end
