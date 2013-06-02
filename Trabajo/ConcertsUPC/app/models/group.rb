class Group < ActiveRecord::Base
  attr_accessible :group, :list, :style, :user_id
  has_many :user
end
