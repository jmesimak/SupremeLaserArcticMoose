class Event < ActiveRecord::Base
  attr_accessible :location, :name

  has_many :memberships
  has_many :users, :through => :memberships
end
