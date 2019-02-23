class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def lifter_membership
    Membership.all.select {|x| x.lifter == self}
  end

  def lifter_membership_gym
    lifter_membership.map {|x| x.gym}
  end

  def self.average_lift_total
    total_lift = Lifter.all.map {|x| x.lift_total}.inject(:+)
    total_lifters = Lifter.all.count
    average = total_lift/total_lifters
    average
  end

  def lifter_gym_membership
    lifter_membership.map {|x| x.cost}.inject(:+)
  end

  def create_gym_membership(cost, gym)
    Membership.new(cost, self, gym)
  end


end
