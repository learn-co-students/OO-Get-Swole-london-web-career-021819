class Gym
  @@all = []
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.map {|personal_membership| personal_membership.lifter}
  end

  def lifters_names
    lifters.map {|lifter| lifter.name}
  end

  def gym_lift_total
    lifters.map {|lifter| lifter.lift_total}.inject :+
  end
end
