#!/usr/bin/env ruby

require_relative "classes/grid.rb"
require_relative "classes/binary_tree"

grid = Grid.new(10,10)
BinaryTree.on(grid)
puts grid