class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map { |membership| membership.gym }
  end

  def self.average_lift
    total_lift = @@all.inject(0) { |sum, lifter| sum += lifter.lift_total }
    average_lift = total_lift / @@all.length
  end

  def create_membership(gym, cost)
    Membership.new(cost, self, gym)
  end
end
