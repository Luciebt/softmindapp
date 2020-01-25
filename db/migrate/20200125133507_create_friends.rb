class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :token
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
