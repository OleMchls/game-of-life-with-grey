require 'spec_helper'
require 'grid'

describe Grid do
  it 'works' do
    expect(true).to be(true)
  end

  describe '#to_a' do
    it 'initialises a grid of a given size' do
      grid = Grid.new(4, 4)
      expect(grid.to_a).to eq([["","","",""],["","","",""],["","","",""],["","","",""]])
    end
  end

  describe '#update' do
    it 'updates a given cell' do
      # Arrange
      grid = described_class.new(2, 2)

      # Act
      grid.update(0, 1, true)

      # Assert
      expect(grid.to_a).to eq([["","*"],["",""]])
    end

    it 'can update an alive cell to dead' do
      grid = described_class.new(2, 2)
      grid.update(0, 1, true)
      grid.update(0, 1, false)

      expect(grid.to_a).to eq([["",""],["",""]])
    end
  end

  describe '#alive?' do
    it 'can check if a cell is alive' do
      grid = described_class.new(2, 2)
      grid.update(0, 1, true)

      expect(grid.alive?(0, 1)).to be(true)
    end
  end
end
