class Board



  def initialize
    @grid = {}
    @size = 0
  end

  def place_ship(ship,location,direction)
    #@grid[location] = ship
    #location :a1 and need :a1,:a2,:a3
    if direction == :down
        x = location[0]
        y = location[1].to_i
        y_range = (y..(ship.size)).to_a

        y_range.each do |i|
          xy = (x + i.to_s).to_sym
          @grid[xy] = ship
        end

    #location :b1 and need :b1,:c1, :d1, :e1
    elsif direction == :right
        letters = ('a'..'z').to_a
        x = location[0]
        y = location[1].to_i
        x_range = (x..(letters[ship.size])).to_a
        x_range.each do |i|
          xy = (i + y.to_s).to_sym
          @grid[xy] = ship
        end


    end
  end


  def location(coordinates)
    @grid[coordinates]
  end

  def create(column,row)
    letters = ('a'..'z').to_a
    column = letters[column -1]
    @size = (column + row.to_s).to_sym
  end

  def area
    @size
  end


end
