require 'board'

describe Board do

  it { is_expected.to respond_to(:place_ship).with(3).arguments }

  it { is_expected.to respond_to(:location).with(1).argument }

  it 'location should equal ship' do
    ship = Ship.new 3
    subject.place_ship ship, :a1, :down
    expect(subject.location(:a1)).to eq(ship)
    expect(subject.location(:a2)).to eq(ship)
    expect(subject.location(:a3)).to eq(ship)
  end

  it 'location should equal ship placed horizontally' do
    ship = Ship.new 2
    subject.place_ship ship, :b1, :right
    expect(subject.location(:b1)).to eq(ship)
    expect(subject.location(:c1)).to eq(ship)
  end

end
