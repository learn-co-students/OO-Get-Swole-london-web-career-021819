class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_gym_memberships
      Membership.all.select {|membership| membership.gym == self}
  end

  def get_lifters
    get_gym_memberships.map {|memberships| memberships.lifter}
  end

  def get_names
      get_lifters.map {|lifters| lifters.name}
  end

  def get_lift_total
    results = get_lifters.map {|lifters| lifters.lift_total}
    results.inject :+
  end

end
