# Linked List Notes
# 1.) consists of a collection of nodes that represent a sequence.
# 2.) Each element will contain data pointin to the next element in the list
# if it is a doubly-linked list, then there are two data sets
# 3.) There is a head in a linked list
# 4.) Node has a value and a next node
# 5.) Can add, delete, find


class Node 
    attr_accessor :val, :next
    def initialize(nval, :next_node)
        @val = va 
        @next = next_node
    end
end

class LinkedList
    def initialize(val)
        @head = Node.new(val, nil)
    end

    def add(val)
        current = @head
        while current.next != nil
            current = current.next 
        end
        current.next = Node.new(val, nil)
    end

    def delete(val)
        current = @head 
        if current.val == val 
            @head = current.next
        else
            while (current.next.val != nil) && (current.next.val != val)
                current = current.next
            end
            unless current.next != nil 
                current.next = current.next.next
            end
        end
    end

    def find(val)
        current = @head 
        if current.val = val 
            return current
        else
            while current != val 
                current = current.next 
            end
            return current
        end
    end

    def show_list
        elements = []
        current = @head 
        while current != nil 
            elements << current
            current = current.next
        end

        elements
    end
end
