require "byebug"

class PolyTreeNode
    attr_reader :value, :parent ,:children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        
        if @parent != node && !node.nil?
            previous_parent = self.parent
            previous_parent.remove_child(self)
            @parent = node
            node.children << self
        else
            @parent = nil
        end
    end
    def remove_child(node)
        raise "node is not a child" if node.parent == nil
        self.parent = nil 
    end

end