class Concert < ActiveRecord::Base
  attr_accessible :name, :dateconcert, :group_id, :hourend, :hourstart, :local_id,:created_user
   belongs_to :local
   belongs_to :group
   has_many :user_concerts
   has_many :users, :through => :user_concerts
end
