class Membership < ActiveRecord::Base
  attr_accessible :user_id, :event_id
  attr_accessible :dayhalf, :dayslot, :timeslot



  belongs_to :user
  belongs_to :event
end
