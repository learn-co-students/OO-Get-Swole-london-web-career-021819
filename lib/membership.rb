class Membership
  @@all = []
  attr_reader :cost, :lifter, :gym

  def self.all
    @@all
  end

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    self.class.all << self
  end
end
