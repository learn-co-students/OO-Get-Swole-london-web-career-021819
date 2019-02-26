class Lifter
  attr_reader :name, :lift_total

  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@lifters
  end

  def self.average_lift
    all.inject(0) {|sum, lifter| sum + lifter.lift_total}/all.count
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.collect(&:gym)
  end

  def membership_cost
    memberships.inject(0) {|sum, membership| sum + membership.cost}
  end
end
