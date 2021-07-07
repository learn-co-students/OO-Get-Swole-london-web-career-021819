class Membership

  attr_reader :cost, :gym_name, :lifter

  @@all = []

  def initialize(cost, lifter, gym_name)
    @cost = cost
    @lifter = lifter
    @gym_name = gym_name
    @@all << self
  end

  def self.all
    # List of all memberships
    @@all
  end

end
