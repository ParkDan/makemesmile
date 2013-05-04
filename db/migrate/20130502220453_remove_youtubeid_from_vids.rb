class RemoveYoutubeidFromVids < ActiveRecord::Migration
  def change
    remove_column :vids, :youtubeid
  end

end
