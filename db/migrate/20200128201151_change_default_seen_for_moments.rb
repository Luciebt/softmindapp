class ChangeDefaultSeenForMoments < ActiveRecord::Migration[5.2]
  def change
  change_column :moments, :seen, :boolean, default: false
  end
end
