# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# Gym
gym1 = Gym.new("Virgin")
gym2 = Gym.new("Fitness First")
gym3 = Gym.new("Nuffield Health")

# Lifter
maz = Lifter.new("Maz", 100)
louise = Lifter.new("Louise", 56)
aimee = Lifter.new("Aimee", 160)

# Membership
membership1 = Membership.new(maz, gym1, 36)
membership2 = Membership.new(louise, gym2, 97)
membership3 = Membership.new(aimee, gym3, 25)
membership4 = Membership.new(maz, gym3, 82)
membership5 = Membership.new(louise, gym3, 73)
membership6 = Membership.new(aimee, gym1, 45)
membership7 = Membership.new(maz, gym2, 76)

#Lifter #instance methods
# maz.get_memberships
# aimee.get_gyms
# Lifter.average_lift_total
# louise.sign_up(gym3, 678)

#Gym #instance methods
# gym3.get_gym_memberships


binding.pry

puts "Gains!"
