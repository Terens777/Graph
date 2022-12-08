//
//  Node.swift
//  Graph
//
//  Created by Danylo Bulanov on 12/7/22.
//

import Foundation

class Node<T: Hashable> {
    
    var value: T?
    var next: Node<T>?
    weak var previous: Node<T>?
    
    init(value: T) {
        self.value = value
        self.next = nil
        self.previous = nil
    }
    
    init(value: T, next: Node<T>) {
        self.value = value
        self.next = next
        self.previous = nil
    }
    
    init(value: T, next: Node<T>, previous: Node<T>) {
        self.value = value
        self.next = next
        self.previous = previous
    }
}
