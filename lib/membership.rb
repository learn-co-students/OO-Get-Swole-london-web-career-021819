class Membership
  attr_reader :cost, :gym, :lifter
  @@memberships = []

  def initialize(gym, lifter, cost = 20)
    @gym = gym
    @lifter = lifter
    @cost = cost
    @@memberships << self
  end

  def self.all
    @@memberships
  end
end
