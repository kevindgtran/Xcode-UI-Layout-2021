//: Playground - noun: a place where people can play

import UIKit

//linked list structure

class LLNode<T> {
    
    var key: T!
    var next: LLNode?
    var previous: LLNode?
}

var current: LLNode<T>! = head

func printAllKeys() {
    //assign the next instance
    while current != nil {
        print("link item is: \(current.key)")
        current = current.next
    }
}


public class LinkedList<T: Equatable> {
    //new instance
    private var head = LLNode<T>()
    //add item
    func append(element key: T) {
        guard head.key != nil else {
            head.key = key
            return
        }
        var current: LLNode? = head
        //position node
        while current != nil {
            if current?.next == nil {
                let childToUse = LLNode<T>()
                childToUse.key = key
                childToUse.previous = current
                current!.next = childToUse
                break
            }
            else {
                current = current?.next
            }
        } //end while
    }
} //end class