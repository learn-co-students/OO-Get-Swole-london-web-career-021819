require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'

pro_gym = Gym.new('Pro Gym')
gym_ll_fix_it = Gym.new("Gym'll fix it")

tom = Lifter.new('Tom', 300)
tom.sign_up(pro_gym, 90)
tom.sign_up(gym_ll_fix_it, 45)

steve = Lifter.new('Steve', 450)
steve.sign_up(pro_gym, 50)

binding.pry
0
