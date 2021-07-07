# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1 = Lifter.new("Stu", 100)
lifter2 = Lifter.new("Alex", 150)
lifter3 = Lifter.new("Sophie", 200)

gym1 = Gym.new("SW11")
gym2 = Gym.new("EC2")
gym3 = Gym.new("N22")

membership1 = Membership.new(50, lifter1, gym1)
membership2 = Membership.new(100, lifter1, gym2)
membership3 = Membership.new(150, lifter1, gym3)
membership2 = Membership.new(100, lifter2, gym2)
membership3 = Membership.new(150, lifter3, gym3)


binding.pry
