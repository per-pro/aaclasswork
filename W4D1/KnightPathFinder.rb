require_relative "PolyTreeNode.rb"

class KnightPathFinder
    def initialize(starting_pos)
        @root_node = PolyTreeNode.new(starting_pos)
        @considered_positions = [starting_pos]
    end

    def self.valid_moves(pos)
        x, y = pos[0], pos[1]
        if (x + 1 > 7 || y + 1 > 7  || x+ 2 > 7 || y + 2 > 7 ) 
            raise "invalid move"
        end
        if (x - 1 < 0 || y - 1 < 0  || x- 2 < 0 || y - 2 < 0 ) 
            raise "invalid move"
        end
        

        
    end

    
end