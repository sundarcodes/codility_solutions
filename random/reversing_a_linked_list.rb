class Node
  def initialize(data)
    @data=data
    @next_node=nil
  end
  def getNextNode
    @next_node
  end
  def setNextNode(node)
    @next_node=node
  end
  def getData
    @data
  end
end

class LinkedList

end

class SingleLinkedList < LinkedList
  def initialize()
    @head=nil
  end
  def addNode(data)
    node=Node.new(data)
    node.setNextNode(@head)
    @head=node
  end
  def display
    node=@head
    until node==nil do
      puts node.getData
      node=node.getNextNode
    end
  end
  def reverse!
    checkNextNode(@head)
  end
private
  def checkNextNode(node)
    if !node.getNextNode
      @head=node
      return
    end
    nextNode=node.getNextNode
    checkNextNode(nextNode)
    node.setNextNode(nil)
    nextNode.setNextNode(node)
    return
  end

end

class DoubleLinkedList < LinkedList
end

list=SingleLinkedList.new
(1..5).each do |element|
  list.addNode(element)
end

list.display
list.reverse!
list.display
