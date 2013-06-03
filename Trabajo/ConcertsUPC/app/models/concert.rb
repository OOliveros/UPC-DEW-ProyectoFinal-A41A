class Concert < ActiveRecord::Base
  attr_accessible :dateconcert, :group_id, :hourend, :hourstart, :local_id
   belongs_to :local
   belongs_to :group
end
