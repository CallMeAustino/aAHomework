require 'Set'
class GraphNode
    attr_accessor :value, :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end
#    def inspect
#         puts "#{self} + #@value"
#     end
end

def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new()
        until queue.empty?
            queue.shift if visited.include?(queue[0])
            el = queue.shift
            visited.add(el)
            return puts "#{el}" if el.value == target_value
            el.neighbors.each {|child| queue << child}
        end

end
a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]