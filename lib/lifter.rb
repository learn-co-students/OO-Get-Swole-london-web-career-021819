# Get a list of all lifters
# Get a list of all the memberships that a specific lifter has
# Get a list of all the gyms that a specific lifter has memberships to
# Get the average lift total of all lifters
# Get the total cost of a specific lifter's gym memberships
# Given a gym and a membership cost, sign a specific lifter up for a new gym



class Lifter
  attr_reader :name, :lift_total, :membership

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  # get all memberships for a lifter, use as helper method
  def my_memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  # Get a list of all the gyms that a specific lifter has memberships to
  def my_gyms
    my_memberships.collect { |membership| membership.gym }
  end

  # Get the average lift total of all lifters
  def self.get_average_lift_total
    # 1 = get sum of lift_total's
    total_lifts = Lifter.all.collect { |x| x.lift_total }.reduce(:+)
    # divide 1 by 2
    total_lifts / Lifter.all.count
  end

  # Get the total cost of a specific lifter's gym memberships
  def get_total_cost
    my_memberships.collect { |x| x.cost }.reduce(:+)
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end

end
