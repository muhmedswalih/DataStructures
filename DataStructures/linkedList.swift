import Foundation

func linkedListOps(){
    print("---Linked List----")
}
class Node{
    var value: String
    var next: Node?
    
    init(value: String){
        self.value = value
    }
}

class LinkedList {
    var head: Node?
    var tail: Node?
    
    var isEmpty: Bool{
        return head == nil
    }
    var first: Node?{
        return head
    }
    var last: Node?{
        return tail
    }
    
    func append(_ value: String){
        let newNode = Node(value: value)
        
        if let currentTail = tail{
            currentTail.next = newNode
        }else{
            head = newNode
        }
        tail = newNode
    }
    
    func prepend(_ value: String){
        let newNode = Node(value: value)
        
        if let currentHead = head{
            currentHead.next = newNode
        }else{
            tail = newNode
        }
        head = newNode
    }
    
    func insert(_ index: Int,_ value: String){
        
        if isEmpty && index > 0{
            print("can't insert value")
            return
        }
        if (index == 0){
            prepend(value)
            return
        }
        let newNode  = Node.init(value: value)
        var traverseIndex = 0
        var node = head
        
        while (node != nil && traverseIndex < index-1){
            node = node!.next
            traverseIndex += 1
        }
        
        guard let safeNode = node else{
            print("index is out of range")
            return
        }
        
        let tempNode = Node(value: value)
        tempNode.next = safeNode.next
        newNode.next = tempNode
        
        if tempNode.next == nil{
            tail = newNode
        }
    }
    
    func remove(_ index: Int) -> String {
        
        if isEmpty {
            return "List is empty"
        }
        
        if index == 0 {
            let value = head!.value
            head = head?.next
            
            if head == nil {
                tail = nil
            }
            
            return value
        }
        
        var current = head
        var previous: Node?
        var currentIndex = 0
        
        while current != nil && currentIndex < index {
            previous = current
            current = current?.next
            currentIndex += 1
        }
        
        guard let nodeToRemove = current else {
            return "Index out of range"
        }
        
        previous?.next = nodeToRemove.next
        
        if nodeToRemove.next == nil {
            tail = previous
        }
        
        return nodeToRemove.value
    }
}

extension LinkedList: CustomStringConvertible{
    var description: String{
        var result = ""
        var node = head
        
        while node != nil{
            result += node!.value + "->"
            node = node!.next
        }
        result += "nil"
        
        return result

    }
}
