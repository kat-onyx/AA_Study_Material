# Breadth First Search Notes
# 1.) algorithm to traverse tree or graph
# 2.) visit each child node, then return to the next child node from the last breakpoint


# tree BFS
def bfs(target = nil, &prc)
    raise "Need a proc or target" if [target, proc].none?
    prc ||= Proc.new { |node| node.value == target }

    nodes = [self]
    until nodes.empty?
        node = nodes.shift
        return node if prc.call(node)
        nodes.concat(node.children)
    end
    nil 
end