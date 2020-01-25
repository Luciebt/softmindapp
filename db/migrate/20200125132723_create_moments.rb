class CreateMoments < ActiveRecord::Migration[5.2]
  def change
    create_table :moments do |t|
      t.string :text_content
      t.boolean :seen
      t.string :media
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
