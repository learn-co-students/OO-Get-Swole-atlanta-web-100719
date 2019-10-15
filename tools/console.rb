# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative "../config/environment.rb"

# test code goes here
soren = Lifter.new("Soren", 100)
clark = Lifter.new("Clark", 101)
kathy = Lifter.new("Kathy", 50)
asia = Lifter.new("Asia", 60)
samantha = Lifter.new("Samantha", 40)

golds = Gym.new("Golds")
g24 = Gym.new("24 Hour")
g19 = Gym.new("Fitness 19")
planet = Gym.new("Planet Fitness")

m1 = Membership.new(10, clark, g19)
m2 = Membership.new(20, kathy, g24)
m3 = Membership.new(30, asia, planet)
m4 = Membership.new(40, asia, golds)
m4 = Membership.new(29, clark, golds)
m4 = Membership.new(9, samantha, g19)

binding.pry

puts "Gains!"
