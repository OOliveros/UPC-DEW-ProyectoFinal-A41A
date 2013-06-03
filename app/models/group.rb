class Group < ActiveRecord::Base
  attr_accessible :genre, :name
  has_many :concerts
end
