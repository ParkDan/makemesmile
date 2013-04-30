class CreateVids < ActiveRecord::Migration
  def change
    create_table :vids do |t|
      t.string :source
      t.text :caption
      t.float :rating
      t.string :youtubeid
    end
  end
end
