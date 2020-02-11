class AddMediaTypeToMoments < ActiveRecord::Migration[5.2]
  def change
    add_column :moments, :media_type, :string
  end
end
