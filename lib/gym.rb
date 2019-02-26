class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  #  Get a list of all gyms
    @@all
  end

  def gym_memberships
    #  Get a list of all memberships at a specific gym
    Membership.all.select {|info| info.gym_name == self}
  end

  def list_of_lifters_at_gym
    #  Get a list of the names of all lifters that have a membership to that gym
    gym_memberships.map { |info| info.lifter.name} # list of names
  end

  def gym_member_lifters
    #  Get a list of all the lifters that have a membership to a specific gym
    gym_memberships.map { |info| info.lifter} # whole instance
  end

  def combined_lift_total
    #  Get the combined lift total of every lifter that has a membership to that gym
    lift_total_helper = gym_memberships.map { |info| info.lifter.lift_total }
    lift_total.reduce { |sum, total| sum+= total}
  end

end
