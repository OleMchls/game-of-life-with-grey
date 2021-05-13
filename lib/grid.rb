class Grid
  def initialize(x,y)
    @grid = Array.new(x).map { |g| Array.new(y, '') }
  end

  def to_a
    @grid
  end

  def update(x, y, alive)
    if alive
      @grid[x][y] = '*'
    else
      @grid[x][y] = ''
    end
  end

  def alive?(x, y)
    @grid[x][y] == '*'
  end
end
