class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def self.all
    @@all
  end

  def member_names
    memberships.map { |membership| membership.lifter.name }
  end

  def lift_total
    memberships.reduce (0) { |sum, membership| sum += membership.lifter.lift_total }
  end
end
