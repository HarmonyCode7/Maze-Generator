require_relative 'classes/recursive_backtracker'
require_relative 'classes/grid'

grid = Grid.new(10,10)
RecursiveBackTracker.on(grid)
filename = 'recurse_maze.png'
grid.to_png.save(filename)
puts "saved to #{filename}"