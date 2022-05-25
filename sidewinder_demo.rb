require_relative "classes/grid"
require_relative "classes/sidewinder"

grid = Grid.new(6,6)

Sidewinder.on(grid)

puts grid