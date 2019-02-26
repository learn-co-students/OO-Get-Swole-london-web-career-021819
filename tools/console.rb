# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

ali = Lifter.new("Ali", 370)
ben = Lifter.new("Ben", 180)
yas = Lifter.new("Yas", 250)

pure = Gym.new("Pure")
anytime = Gym.new("Anytime")
easy = Gym.new("Easy Gym")

ali_p = Membership.new(pure, ali, 25)
ali_a = Membership.new(anytime, ali, 35)
ben_e = Membership.new(easy, ben,)
yas_a = Membership.new(anytime, yas, 35)
yas_e = Membership.new(easy, yas)

ali.sign_up(easy, 15)

binding.pry

puts "Gains!"
