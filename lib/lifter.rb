class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  #Get a list of all lifters
  def self.all
    @@all
  end

  #Get a list of all the memberships that a specific lifter has
  def lifter_membership
    Membership.all.select{|membership| membership.lifter == self}
  end

  #Get a list of all the gyms that a specific lifter has memberships to
  def lifter_gym
    lifter_membership.map{|membership| membership.gym}
  end

  #Get the average lift total of all lifters
  def average_lift
    total = 0.0
    count = 0
    @@all.each do |lifter|
      total += lifter.lift_total
      count += 1
    end
    total/count
  end

  #Get the total cost of a specific lifter's gym memberships
  def total_cost
    array = lifter_membership.map{|membership| membership.cost}
    sum = 0
    array.each{|x| sum += x}
    sum
  end

  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  def gym_signup(gym, cost)
    Membership.new(cost, self, gym)
  end
end
