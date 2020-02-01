class RemoveTokenFromFriends < ActiveRecord::Migration[5.2]
  def change
    remove_column :friends, :token, :string
  end
end
