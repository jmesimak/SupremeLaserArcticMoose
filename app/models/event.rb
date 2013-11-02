class Event < ActiveRecord::Base
  attr_accessible :location, :name

  has_many :memberships
  has_many :users, :through => :memberships

  def getsuperday
    arr = []
    self.memberships.each do |m|
      arr.push(m.dayslot)
    end
    freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    return arr.sort_by { |v| freq[v] }.last
  end

  def getsupertime(day)
    array = []
    self.memberships.each do |m|
      if (m.dayslot == day)
        array.push(m.dayslot)
      end
    end
    freq = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    return array.sort_by { |v| freq[v] }.last
  end

  def getfav()
    self.memberships.group(:dayslot).group(:timeslot).count.sort_by { |x,y| y}.last.first
  end
end
