class PolyTreeNode
    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        # @old_parent = nil
        @children = []
    end

    #node here is the parent
    def parent=(node)
        # debugger
        if @parent != node && !node.nil?  
            if !@parent.nil?
                @parent.children.delete(self) if !@parent.nil?
                @parent.remove_child(self)
            end 
            @parent = node
            node.children << self
        else
            @parent = nil
        end
    end

    #node here is the child
    def add_child(node)
        node.parent = self
    end

    #node here is the child
    def remove_child(node)
        raise "node is not a child" if node.parent == nil
        node.parent = nil
    end
end