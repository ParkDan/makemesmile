class Comment < ActiveRecord::Base
  attr_accessible :comment, :timestamp, :user_id, :vid_id
  belongs_to :user
  belongs_to :vid
end
