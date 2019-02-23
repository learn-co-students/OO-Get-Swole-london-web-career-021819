class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def gym_membership
    Membership.all.select {|x| x.gym == self}
  end

  def gym_membership_lifters
    gym_membership.map {|x| x.lifter}
  end

  def gym_membership_lifters_names
    gym_membership_lifters.map {|x| x.name}
  end

  def gym_membership_lift_total
    gym_membership_lifters.map {|x| x.lift_total}.inject(:+)
  end

end
