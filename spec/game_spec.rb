require 'spec_helper'
require 'game'

describe Game do
  it "works" do
    expect(true).to be true
  end

  it "loads the game" do
    expect(subject).to be_a Game
  end
end
