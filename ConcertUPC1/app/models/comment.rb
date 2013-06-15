class Comment < ActiveRecord::Base
  attr_accessible :group_id, :message, :url, :user, :title
end
