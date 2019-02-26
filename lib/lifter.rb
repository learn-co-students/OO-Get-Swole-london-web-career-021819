class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    #Get a list of all lifters
    @@all
  end

  def memberships
    #Get a list of all the memberships that a specific lifter has
    Membership.all.select { |membership| membership.lifter == self}
    # check you're comparing the correct thing , instances and names, self is an instance so make sure you wrote self.name
  end

  def gyms
    memberships.map { |memberships| memberships.gym_name}
    #Get a list of all the gyms that a specific lifter has memberships to
  end

  def membership_costs
    memberships.map { |membership| membership.cost }
  end

  def membership_cost_total
    #Get the total cost of a specific lifter's gym memberships
    membership_costs.reduce {|sum, total| sum+= total }
  end

  def lifter_membership
    memberships.map { |membership| membership.gym_name }
  end

  def self.total_lift_amounts
    all.collect { |lifter| lifter.lift_total }
  end

  def self.average_lift
    #Get the average lift total of all lifters
    averagelift = total_lift_amounts.reduce { |amounts, total| amounts+= total }
    averagelift / @@all.length
  end

  def new_gym(cost, gym)
    #Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(cost, self, gym)
  end

end
