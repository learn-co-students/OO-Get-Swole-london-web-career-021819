class Lifter

  attr_reader :name
  attr_accessor :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def get_memberships
      Membership.all.select {|membership| membership.lifter == self}
  end

  def get_gyms
      get_memberships.map {|memberships| memberships.gym}
  end

  def self.average_lift_total
      results = Lifter.all.map {|lifter| lifter.lift_total}
      total_lifted = results.inject :+
      average = total_lifted/@@all.count
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end
