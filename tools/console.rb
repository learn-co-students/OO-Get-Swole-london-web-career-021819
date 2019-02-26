# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Jeff", 10)
l2 = Lifter.new("Bob", 50)
l3 = Lifter.new("Helen", 80)

g1 = Gym.new("Big Muscle Gym")
g2 = Gym.new("Weedy Wonders")
g3 = Gym.new("Raaaaah!")

m1 = Membership.new(l1, g1, 100)
m2 = Membership.new(l1, g2, 500)
m3 = Membership.new(l1, g3, 800)
m4 = Membership.new(l2, g1, 2500)
m5 = Membership.new(l2, g2, 5000)
m6 = Membership.new(l2, g3, 10000)
m7 = Membership.new(l3, g1, 24)
m8 = Membership.new(l3, g2, 61)
m9 = Membership.new(l3, g3, 33)



binding.pry

puts "Gains!"
