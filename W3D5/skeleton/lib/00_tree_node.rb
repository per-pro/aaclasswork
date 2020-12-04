require "byebug"

class PolyTreeNode
    attr_reader :value, :parent ,:children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    #node here is the parent
    def parent=(node)
        
        if @parent != node && !node.nil?
            # debugger
            previous_parent = @parent
            previous_parent.remove_child(self) if !previous_parent.nil?
            @parent = node
            node.children << self
        else
            @parent = nil
        end
    end

    
    #node here is the child
    def remove_child(node)
        raise "node is not a child" if node.parent == nil
        node.parent = nil
    end

end