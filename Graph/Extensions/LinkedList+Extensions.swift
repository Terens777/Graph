//
//  LinkedList+Extensions.swift
//  Graph
//
//  Created by Danylo Bulanov on 12/7/22.
//

import Foundation

extension LinkedList {
    
    func printAllKeys() {
        if let h = head {
            h.printAllKeys()
        }
    }
    
    func getListNodes() -> Array<T> {
        if let h = head {
            return h.getListNodes()
        }
        return .init()
    }
}
