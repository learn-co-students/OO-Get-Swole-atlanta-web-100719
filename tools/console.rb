# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative "../config/environment.rb"

# test code goes here

g1 = Gym.new("golds")
l1 = Lifter.new("kuran", 50)
m1 = Membership.new(150, l1, g1)

binding.pry

puts "Gains!"
