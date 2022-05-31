require_relative "classes/grid"
require_relative "classes/sidewinder"

grid = Grid.new(50,50)

Sidewinder.on(grid)

puts grid 

img = grid.to_png
img.save "mazegui1.png"

svg_img = grid.to_svg 
svg_img.save "mazegui.svg"
