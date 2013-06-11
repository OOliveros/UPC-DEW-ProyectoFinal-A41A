class Group < ActiveRecord::Base
  attr_accessible :genre, :name, :created_user
  has_many :user_group
  has_many :users, :through => :user_group
end
