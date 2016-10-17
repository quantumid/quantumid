class AddTokenToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :encrypted_token, :string
    add_column :users, :encrpyted_token_iv, :string
  end

  def down
    remove_column :users, :encrypted_token
    remove_column :users, :encrpyted_token_iv
  end
end
