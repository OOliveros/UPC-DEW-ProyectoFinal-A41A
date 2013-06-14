class Group < ActiveRecord::Base
  attr_accessible :genre, :name, :created_user, :image
  has_many :user_groups
  has_many :users, :through => :user_groups
  has_attached_file :image
end
