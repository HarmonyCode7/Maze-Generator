require_relative 'cell'

class TriangleCell < Cell 
    def upright?
        (row + column).even?
    end

    def neighbors 
        list = []
        list << west if west 
        list << east if east 
        list << north if !upright? && north 
        list << south if upright? && south
    end

end