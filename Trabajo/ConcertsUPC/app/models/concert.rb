class Concert < ActiveRecord::Base
  attr_accessible :dateconcert, :group, :hourend, :hourstart, :local
   belongs_to :local
    belongs_to :group
end
