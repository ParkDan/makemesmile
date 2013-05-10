class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.time :timestamp
      t.integer :user_id
      t.integer :vid_id

      t.timestamps
    end
  end
end
