class AddFriendsIdToMoments < ActiveRecord::Migration[5.2]
  def change
    add_reference :moments, :friend, foreign_key: true
  end
end
