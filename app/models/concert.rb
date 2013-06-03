class Concert < ActiveRecord::Base
  attr_accessible :name, :dateconcert, :group_id, :hourend, :hourstart, :local_id
   belongs_to :local
   belongs_to :group
   has_many :user_concert
   has_many :users, :through => :user_concert
end
