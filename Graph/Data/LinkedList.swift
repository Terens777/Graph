//
//  LinkedList.swift
//  Graph
//
//  Created by Danylo Bulanov on 12/7/22.
//

import Foundation

class LinkedList<T: Hashable> {
    
    private(set) var head: Node<T>?
    private var tail: Node<T>?
    private var counter: Int = 0
    
    var count: Int {
        counter
    }
    var isEmpty: Bool {
        return head == nil
    }
    var first: Node<T>? {
        return head
    }
    var last: Node<T>? {
        return tail
    }
    
    func append(value: T) {
        let newNode = Node(value: value)
        if let tail = self.tail {
            newNode.previous = tail
            tail.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
        counter += 1
    }
    
    func contains(_ value: T) -> Bool {
        var current = head
        while current != nil {
            if current?.value == value {
                return true
            }
            current = current?.next
        }
        return current?.value == value
    }
    
    private func find(_ index: Int) -> Node<T>? {
        if index < 0 || index > (self.count - 1) || head?.value == nil {
            return nil
        } else {
            var current: Node<T>? = head
            var x: Int = 0
            
            while (index != x) {
                if let cur = current?.next {
                    current = cur
                }
                x += 1
            }
            return current
        }
    }
    
    subscript(index: Int) -> Node<T>? {
        get {
            guard let node = find(index) else {
                return nil
            }
            return node
        }
    }
}
