class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Get a list of all gyms
  def self.all
    @@all
  end

  #Get a list of all memberships at a specific gym
  def all_memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  #Get a list of all the lifters that have a membership to a specific gym
  def lifter_membership
    all_memberships.map{|membership| membership.lifter}
  end

  #Get a list of the names of all lifters that have a membership to that gym
  def lifter_name
    lifter_membership.map{|lifter| lifter.name}.uniq
  end

  #Get the combined lift total of every lifter has a membership to that gym
  def total_lift
    total = 0
    lifter_membership.each {|lifter| total += lifter.lift_total}
    total
  end
end
