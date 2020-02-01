class AddTokenToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :authentication_token, :string, limit: 30
    add_index :friends, :authentication_token, unique: true
  end
end
