# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

the_gym = Gym.new('The Gym')
pure_gym = Gym.new('Pure Gym')
ff = Gym.new('Fitness First')

fez = Lifter.new('Fez', 200)
ali = Lifter.new('Ali', 100)
khang = Lifter.new('Khang', 50)

m1 = Membership.new(100, fez, the_gym)
m2 = Membership.new(50, fez, pure_gym)
m3 = Membership.new(25, fez, ff)
m4 = Membership.new(100, ali, the_gym)
m5 = Membership.new(50, ali, pure_gym)
m6 = Membership.new(100, khang, the_gym)

binding.pry

puts "Gains!"
