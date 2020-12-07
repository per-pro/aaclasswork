require_relative "PolyTreeNode.rb"

class KnightPathFinder
    def initialize(starting_pos)
        @root_node = PolyTreeNode.new(starting_pos)
        @considered_positions = [starting_pos]
    end

    def self.valid_moves(pos)
        x, y = pos[0], pos[1]
        
    end

    
end