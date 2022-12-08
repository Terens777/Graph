//
//  Node+Extensions.swift
//  Graph
//
//  Created by Danylo Bulanov on 12/7/22.
//

import Foundation

extension Node {
    
    func printAllKeys() {
        var current: Node? = self
        while current != nil {
            if let value = current?.value {
                print(value)
            }
            current = current?.next
        }
    }
    
    func getListNodes() -> Array<T> {
        var array: Array<T> = .init()
        var current: Node? = self
        while current != nil {
            if let value = current?.value {
                array.append(value)
            }
            current = current?.next
        }
        return array
    }
}
