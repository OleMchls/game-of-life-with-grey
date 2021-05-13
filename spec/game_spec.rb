require 'spec_helper'
require 'game'
require 'grid'

describe Game do
  it 'works' do
    expect(true).to be true
  end

  it 'loads the game' do
    expect(subject).to be_a Game
  end

  describe '#turn' do
    xit 'returns an updated grid' do
      grid = Grid.new(2, 2)
      grid.update(0, 0, true)

      generation2 = subject.turn(grid)

      expect(generation2.alive?(0, 0)).to be false
    end
  end

  describe '#calculate_next_gen' do
    it 'calculates the state of a given cell' do
      grid = Grid.new(2, 2)
      grid.update(0, 0, true)

      cell = subject.calculate_next_gen(grid, x, y)

      expect(cell).to be false
    end
  end
end
