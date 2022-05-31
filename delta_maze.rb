require_relative 'classes/recursive_backtracker'
require_relative 'classes/triangle_grid'

grid = TriangleGrid.new(10,10)
RecursiveBackTracker.go(grid) 

grid.to_png.save('delta_maze.png')