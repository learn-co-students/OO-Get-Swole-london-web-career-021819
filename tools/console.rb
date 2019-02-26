# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("Cool Gym")
g2 = Gym.new("Clean Gym")
g3 = Gym.new("Big Gym")

l1 = Lifter.new("Swole Dude", 150)
l2 = Lifter.new("Mesomorph", 70)
l3 = Lifter.new("Cardio Guy", 80)

m1 = Membership.new(1000, l1, g1)
m2 = Membership.new(700, l2, g2)
m3 = Membership.new(600, l3, g3)
m4 = Membership.new(200, l1, g3)
m5 = Membership.new(1700, l2, g3)

# REMEMBER : pass in the object into the membership or the thing that links the model together!!!!
# REMEMBER : check what you're comparing = make sure you're comparing the same data types! (instances with instances, strings with strings)
# REMEMBER : you have to use map in order to filter through the instance object
# REMEMBER : collect always returns the same number of elements that the original array had (unless using exclamation mark? - i.e. map! / collect! ?)


binding.pry

puts "Gains!"
