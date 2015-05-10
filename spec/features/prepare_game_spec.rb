require 'capybara/rspec'

feature 'player preps for game' do
  scenario 'place a ship at a board location' do
    board = Board.new
    ship = Ship.new 3
    board.place_ship ship, :a1, :down
    expect(board.location(:a1)).to eq(ship)
    expect(board.location(:a2)).to eq(ship)
    expect(board.location(:a3)).to eq(ship)
  end


end
