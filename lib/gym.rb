class Gym
  attr_reader :name

  @@gyms = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@gyms
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def lifters
    memberships.collect(&:lifter)
  end

  def lifter_names
    lifters.collect(&:name)
  end

  def lifter_total_weight
    lifters.inject(0) {|sum, lifter| sum + lifter.lift_total}
  end
end
