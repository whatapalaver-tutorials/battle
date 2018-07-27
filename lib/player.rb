class Player
  DEFAULT_HIT_POINTS = 20
  attr_reader :name, :hit_points
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage
    @damage = Kernel.rand(5..10)
    @hit_points -= @damage
  end
end