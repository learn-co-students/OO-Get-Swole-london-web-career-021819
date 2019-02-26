# Get a list of all gyms
# get a list of all memberships at a specific gym
# Get a list of all the lifters that have a membership to a specific gym
# Get a list of the names of all lifters that have a membership to that gym
# Get the combined lift total of every lifter has a membership to that gym


class Gym
  attr_reader :name, :membership

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

# get a list of all memberships at a specific gym
  def get_memberships
    Membership.all.select { |membership| membership.gym == self }
  end

# Get a list of all the lifters that have a membership to a specific gym
  def get_lifters
    get_memberships.collect { |membership| membership.lifter }
  end

# Get a list of the names of all lifters that have a membership to that gym
  def get_lifters_names
    get_lifters.collect { |lifter| lifter.name }
  end

# Get the combined lift total of every lifter has a membership to that gym
  def get_lifters_total_lifts
    get_lifters.collect { |lifter| lifter.lift_total }.reduce(:+)
  end
  # First try gave:
  # "NoMethodError: undefined method `+' for nil:NilClass"
  # TODO: investigate....
    # total_lifts = 0
    # get_lifters.each { |lifter| total += lifter.lift_total }
    # total_lifts
end
