class Lifter
  attr_reader :name, :lift_total
  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@lifters << self
  end

  def self.all
    @@lifters
  end

  def my_memberships 
    Membership.all.select{|membership| membership.lifter == self}
  end

  def self.lift_average
    (all.map{|lifter| lifter.lift_total}.inject(0, :+).to_f / all.length).round(2)
  end

  def my_membership_costs
    my_memberships.map{|membership| membership.cost}.inject(0, :+)
  end

  def sign_up(gym, cost)
    Membership.new(gym, self, cost)
  end
end
