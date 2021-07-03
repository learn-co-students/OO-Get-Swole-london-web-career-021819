# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
khang = Lifter.new("Khang", 60)
faiz = Lifter.new("Faiz", 20)
kai = Lifter.new("Kai", 120)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")

membership1 = Membership.new(20, khang, gym1)
membership2 = Membership.new(50, khang, gym2)
membership3 = Membership.new(60, khang, gym3)

membership4 = Membership.new(20, faiz, gym1)
membership5 = Membership.new(40, faiz, gym2)
membership6 = Membership.new(60, faiz, gym3)

membership7 = Membership.new(20, kai, gym1)
membership8 = Membership.new(40, kai, gym2)
membership9 = Membership.new(60, kai, gym3)

binding.pry

puts "Gains!"
