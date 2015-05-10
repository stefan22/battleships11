require 'capybara/rspec'

feature 'player preps for game' do
  scenario 'place a ship at a board location vertically' do
    board = Board.new
    ship = Ship.new 3
    board.place_ship ship, :a1, :down
    expect(board.location(:a1)).to eq(ship)
    expect(board.location(:a2)).to eq(ship)
    expect(board.location(:a3)).to eq(ship)
  end

  scenario 'added second ship horizontally' do
    board = Board.new
    ship = Ship.new 4
    board.place_ship ship, :b1, :right
    expect(board.location(:b1)).to eq(ship)
    expect(board.location(:c1)).to eq(ship)
    expect(board.location(:d1)).to eq(ship)
    expect(board.location(:e1)).to eq(ship)
  end

  scenario 'creates a board of size 10 x 10' do
    board = Board.new
    board.create 10,10
    expect(board.area).to eq :j10
  end

end
