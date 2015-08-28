class Tile
  attr_reader :value
  def initialize
    @value = Random.rand(0..1)
    @shown = false
  end

  def is_bomb?
    self.value.zero? ? false : true
  end

  def reveal
  end

  def neighbors
    #diffs = [[-1, -1], ]
  end

  def neighbor_bomb_count

  end

  def inspect
    @shown ? @value : '*'
  end
end
