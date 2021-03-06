class RecursiveBackTracker 

    def self.on(grid, start_at: grid.random_cell)
        stack = []
        stack.push(start_at)

        while stack.any? 
            current = stack.last 
            neighbors = []
            neighbors = current.neighbors.select { |n| n.links.empty? }

            if neighbors.empty?
                stack.pop 
            else
                neighbor = neighbors.sample
                current.link(neighbor)
                stack.push(neighbor)
            end
        end
        grid
    end

    def self.go(grid, start_at: grid.random_cell) 
        stack = []
        stack.push(start_at)
        while stack.any?
            current = stack.last
            neighbors = current.neighbors.select { |n| n.links.empty? }

            if neighbors.empty? 
                neighbor = neighbors.sample 
                current.link(neighbor)
                stack.push(neighbor)
            end 
        end
        grid
    end
end