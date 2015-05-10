require 'ship'

describe Ship do

  it 'size should reflect on board' do
    ship = Ship.new 3
    expect(ship.size).to eq 3
  end




end
