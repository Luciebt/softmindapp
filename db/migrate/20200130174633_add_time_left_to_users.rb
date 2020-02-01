class AddTimeLeftToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :time_left_today, :integer
  end
end
