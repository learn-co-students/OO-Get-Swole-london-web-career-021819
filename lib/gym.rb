class Gym
  attr_reader :name
  @@gyms = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@gyms
  end

  def this_gym_memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def member_names
    this_gym_memberships.map{|membership| membership.lifter.name}
  end

  def lifter_totals_combined
    this_gym_memberships.map{|membership| membership.lifter.lift_total}.inject(0, :+)
  end
end
