require_relative 'tile'
class Board
attr_reader :grid

  def initialize(size = 9)
    @grid = Array.new(size) {Array.new(size)}
    fill_board
  end

  def fill_board
    @grid.each_index do |id_1|
      @grid.each_index do |id_2|
        @grid[id_1][id_2] = Tile.new
      end
    end
  end

  def render
    @grid.each do |array|
      current = []
      array.each do |el|
         current << el.value.inspect
      end
      p current
    end
    # p @grid
  end


end
