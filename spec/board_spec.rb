require 'board'

describe Board do

  it { is_expected.to respond_to(:place_ship).with(3).arguments }

  it { is_expected.to respond_to(:location).with(1).argument }

  it { is_expected.to respond_to(:create).with(2).arguments }

  it { is_expected.to respond_to (:area) }

  it 'location should equal ship placed vertically' do
    ship = Ship.new 3
    subject.place_ship ship, :a1, :down
    expect(subject.location(:a1)).to eq(ship)
    expect(subject.location(:a2)).to eq(ship)
    expect(subject.location(:a3)).to eq(ship)
  end

  it 'location should equal ship placed horizontally' do
    ship = Ship.new 4
    subject.place_ship ship, :b1, :right
    expect(subject.location(:b1)).to eq(ship)
    expect(subject.location(:c1)).to eq(ship)
    expect(subject.location(:d1)).to eq(ship)
    expect(subject.location(:e1)).to eq(ship)
  end

  it 'creates a board of size 10 x 10' do
    subject.create 10,10
    expect(subject.area).to eq 100
  end

end
