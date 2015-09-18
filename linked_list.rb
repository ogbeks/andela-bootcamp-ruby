class Node
  attr_accessor :node, :next
def initialize (node)
  @node = node
end
def self.node_list (node, msg=nil)
  msg ||=""
  return msg[0..-4] if node.nil?
  node_list(node.next, msg << "#{node.node} -> ")
end

end
