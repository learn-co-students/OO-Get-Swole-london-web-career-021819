class Membership
  attr_reader :lifter, :gym, :cost

  @@memberships = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    self.class.all << self
  end

  def self.all
    @@memberships
  end
end
