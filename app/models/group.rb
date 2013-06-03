class Group < ActiveRecord::Base
  attr_accessible :genre, :name
  has_many :user_group
  has_many :users, :through => :user_group
end
