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

        possible =  []
        possible << [x + 1, y + 2]
        possible << [x + 1, y - 2]
        possible << [x + 2, y + 1]
        possible << [x + 2, y - 1]
        possible << [x - 1, y + 2]
        possible << [x - 1, y - 2]
        possible << [x - 2, y + 1]
        possible << [x - 2, y - 1]
        possible
    end
    
    def new_move_positions(pos)
        new_pos = []
        KnightPathFinder.valid_moves(pos).each do |arr|
            if !@considered_positions.include?(arr)
                @considered_positions << arr
                new_pos << arr 
            end
        end
        new_pos
    end

    def build_move_tree(position)
        nodes =[]
        nodes << @root_node
        until nodes.empty? 
            node = nodes.shift
            return node if node.value == position
            nodes.concat(new_move_positions(position))
        end
    end

    
end 

kpf = KnightPathFinder.new([0,0])
kpf.build_move_tree([2,1])