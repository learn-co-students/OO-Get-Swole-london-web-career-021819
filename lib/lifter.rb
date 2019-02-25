class Lifter
  @@all = []
  attr_reader :name, :lift_total

  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    memberships.map {|personal_membership| personal_membership.gym}
  end

  def self.average_lift_total
    lifters_number = self.all.length
    total_weight_lifted = self.all.map{|lifter| lifter.lift_total}.inject :+
    average_lift_total = total_weight_lifted/lifters_number.to_f
  end

  def membership_costs
    memberships.map {|personal_membership| personal_membership.cost}.inject :+
  end

  def sign_up_to_gym(gym, cost)
    Membership.new(cost, self, gym)
  end

end
